class ImportedEvent < ActiveRecord::Base
  belongs_to :host
  belongs_to :place
  belongs_to :event_type
  belongs_to :user
end
