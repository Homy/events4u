class ImportedEventsController < CrudController
  self.permitted_attrs = [:dateStart, :dateEnd, :name, :about, :url, :host_id, :event_type_id, :place_id]
  self.search_columns = [:name]
  self.default_sort = 'dateStart'
  helper_method :current_user

  def index
    self.FetchEvents
    current_user.import_events
    super
  end

  def FetchEvents
    #fetch from social network
    u = FbGraph2::User.new(current_user.uid).authenticate(current_user.token)
    u.events.each do |t|
      e = t.fetch(fields: [:name, :description, :location,:start_time,:updated_time,:parent_group, :owner],:access_token=>current_user.token)
      ImportedEvent.create(name: e.name, about: e.description, dateStart:  e.start_time , dateEnd:  e.end_time, ihost_id: e.owner.id, iplace_id: e.raw_attributes[:id], user_id: current_user.id, iplace_name: e.raw_attributes[:location], ievent_id: e.id) unless ImportedEvent.find_by_ievent_id(e.id)
    end
  end

end