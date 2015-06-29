class Report < ActiveRecord::Base
  belongs_to :event
  validates :event_id, presence: true
  def to_s
    "#{title}"
  end
end
