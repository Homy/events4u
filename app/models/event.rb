class Event < ActiveRecord::Base
  belongs_to :host
  belongs_to :event_type
  belongs_to :place
  has_many :reports, dependent: :destroy
  validates :event_type_id, presence: true
  validates :place_id, presence: true
  validates :host_id, presence: true
  def to_s
    "#{name}"
  end
end
