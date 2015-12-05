class Report < ActiveRecord::Base
  belongs_to :event
  validates :event_id, :content, presence: true
  def to_s
    "#{title}"
  end
end
