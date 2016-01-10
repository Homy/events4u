class UsersController < CrudController
  include UsersHelper
  before_filter :verify_is_admin
  self.permitted_attrs = [:first_name, :last_name, :email]
  def import_events
    # require 'pry';binding.pry
    @user.imported_events.each do |e|
      Event.create(name: e.name, about: e.about, dateStart:  e.date_start , dateEnd:  e.date_end, user_id: current_user.id, importedFfrom: e.imported_from) unless Event.find_by( imported_id: e.ievent_id)
      redirect_to events_path
    end
  end
end
