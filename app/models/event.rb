class Event < ActiveRecord::Base
  belongs_to :host
  belongs_to :event_type
  belongs_to :place
  has_many :reports, dependent: :destroy
  validates :name, :event_type_id, :place_id, :host_id, presence: true
  validate :EndsLaterThanStarts?

  def EndsLaterThanStarts?
    if dateStart >= dateEnd
      errors.add(:dateEnd, 'must be later than date of beginning!')
    end
  end
  def to_s
    "#{name}"
  end
end
