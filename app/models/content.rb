class Content < ApplicationRecord

  validates_presence_of :title, :content, :author, :published_date

end

