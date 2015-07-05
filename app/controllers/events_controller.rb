class EventsController < CrudController
  self.permitted_attrs = [:dateStart, :dateEnd, :name, :about, :url, :host_id, :event_type_id, :place_id]
  self.search_columns = [:name]
  self.default_sort = 'dateStart'
end