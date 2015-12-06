class ImportedEventsController < CrudController
  self.permitted_attrs = [:dateStart, :dateEnd, :name, :about, :url, :host_id, :event_type_id, :place_id]
  self.search_columns = [:name]
  self.default_sort = 'dateStart'

  def FetchEvents
    #fetch from social network
  end


  def ImportEvents
    #import into loacl db
  end
end