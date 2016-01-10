module ImportedEventsHelper
  def import_events
    #transfer from transitional table to main one
    current_user.imported_events.each do |e|
      puts e.name, e.about
      # Event.create(name: e.name, about: e.about, dateStart:  e.dateStart , dateEnd:  e.dateEnd, user_id: current_user.id, importedFrom: current_user.provider) unless Event.find_by( imported_id: e.ievent_id)
      # redirect_to events_path
    end
  end
end