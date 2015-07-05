class EventsController < CrudController
  self.permitted_attrs = [:name, :about, :url, :date_begin, :time_begin, :date_end, :time_end, :host_id, :event_type_id, :place_id]
  self.search_columns = [:name]
  self.default_sort = 'date_begin, time_begin'
end