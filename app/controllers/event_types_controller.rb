class EventTypesController < CrudController
  include UsersHelper
  before_filter :verify_is_admin , :only => [:edit, :destroy]
  self.permitted_attrs = [:name]
end
