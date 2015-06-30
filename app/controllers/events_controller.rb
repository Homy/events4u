class EventsController < CrudController
  self.permitted_attrs = [:name, :about, :url, :date_begin, :date_end, :host_id, :event_type_id, :place_id]
  self.search_columns = [:name]
end