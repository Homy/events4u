class EventType < ActiveRecord::Base
  has_many :events, dependent: :destroy
  validates :name, presence: true, uniqueness: {case_sensitive: false}
  def to_s
    "#{name}"
  end
end
