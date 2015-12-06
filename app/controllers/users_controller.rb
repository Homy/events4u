class UsersController < CrudController
  include UsersHelper
  before_filter :verify_is_admin
  self.permitted_attrs = [:first_name, :last_name, :email]
end
