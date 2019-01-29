class ContentWorker
  include Sidekiq::Worker

  def perform(content)
    content.update_column :status, 'published'
  end
end
