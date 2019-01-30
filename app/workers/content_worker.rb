class ContentWorker
  include Sidekiq::Worker

  def perform(content_id)
    Content.find(content_id).update_column :status, 'published'
  end
end
