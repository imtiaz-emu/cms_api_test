class ContentSerializer < ActiveModel::Serializer
  attributes :title, :author, :published_date, :content, :summary
end
