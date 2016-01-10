class ImportedEventsController < CrudController
  self.permitted_attrs = [:dateStart, :dateEnd, :name, :about, :url, :host_id, :event_type_id, :place_id]
  self.search_columns = [:name]
  self.default_sort = 'dateStart'

  def index
    self.FetchEvents
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

  def import_events
    #transfer from transitional table to main one
    # require 'pry';binding.pry
    current_user.imported_events.each do |e|
      Event.create(name: e.name, about: e.about, dateStart:  e.date_start , dateEnd:  e.date_end, user_id: current_user.id, importedFfrom: e.imported_from) unless Event.find_by( imported_id: e.ievent_id)
      redirect_to events_path
    end
  end

end