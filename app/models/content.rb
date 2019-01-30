class Content < ApplicationRecord

  validates_presence_of :title, :content, :author, :published_date

  scope :published_contents, -> { where('status = (?)', 'published') }

  after_create :publish_future_content


  private

  def publish_future_content
    if self.status != 'published' && self.published_date > Time.now
      ContentWorker.perform_at(self.published_date, self.id)
    end
  end

end

