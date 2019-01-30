class ContentSerializer < ActiveModel::Serializer
  attributes :title, :author, :published_date, :content, :summary

  def published_date
    object.published_date.strftime("%d %b, %y @ %H:%M %Z")
  end
end
