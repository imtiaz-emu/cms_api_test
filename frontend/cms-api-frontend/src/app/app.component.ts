import { Component, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {
  title = 'cms-api-frontend';
  contents;
  constructor(private http: HttpClient) { }

 ngOnInit(){
   this.http.get('http://localhost:3000/api/contents.json')
     .subscribe(res => this.contents = res);
 }

  isEmptyObject(obj) {
    return (obj && (Object.keys(obj).length === 0));
  }
}
