class EventType < ActiveRecord::Base
  has_many :events, dependent: :destroy
  def to_s
    "#{name}"
  end
end
