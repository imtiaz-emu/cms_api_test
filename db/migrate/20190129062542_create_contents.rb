class CreateContents < ActiveRecord::Migration[6.0]
  def change
    create_table :contents do |t|
      t.string      :title, null: false
      t.datetime    :published_date
      t.string      :author
      t.text        :summary
      t.text        :content
      t.string      :status, default: 'draft'


      t.timestamps
    end
  end
end
