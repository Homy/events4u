class EventsController < CrudController
  self.permitted_attrs = [:name, :about, :url, :dateBegin, :dateEnd, :host_id, :event_type_id, :place_id]
  self.search_columns = [:name]
end