# README


### Features

- Create an API that returns a list of Content items with fixed attributes

### Requirements

- Ruby: `2.6.0`
- Rails: `6.0.0.beta1`
- PostgreSQL
- Angular CLI `7.0.6`
- NodeJS `8.10.0`

### Installation

#### API Backend
- Clone the repository.
- Goto cloned repository using - `cd cms_api_test/` (or whatever your local project folder name)
- Create a `database.yml` and `master.key` file in config folder. There is a `database.sample.yml` and `master.sample.key` file in the same directory. Copy and paste the contents of those files in your newly created YAML file. Then change accordingly. (e.g. change database username/password/db_name)
- Install required gems(libraries) - `bundle install`
- In your command line run - `rake db:create`  (_It'll create a new database in mysql_)
- In your command line run - `rake db:migrate`  (_It'll add tables to your  newly created database_)
- In your command line run - `rake db:seed`  (_It'll add data to your  newly created database tables_)
- Run `redis-server` from another terminal. If its not installed in the machine then run `sudo apt install redis-server` for ubuntu, in OSX run `brew install redis-server`
- Run **Sidekiq** using `bundle exec sidekiq`
- Run `rails server` (_It'll run the backend system on port 3000_). <span style=“color:red;”> Be sure to run it on port 3000</span>
- If all dependencies met, then the backend api will run on `localhost:3000`  

#### API Frontend
- Goto `cd cms_api_test/frontend/cms-api-frontend` in a different terminal.
- install node dependencies using `npm install`
- Then run `ng serve` to run the frontend. It'll open a new tab in the default browser with URL: `localhost:4200`
- The fetched published contents will be shown there.

