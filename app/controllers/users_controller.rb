class UsersController < CrudController
  before_filter :verify_is_admin
  self.permitted_attrs = [:first_name, :last_name, :email]

  private

  def verify_is_admin
    (current_user.nil?) ? redirect_to(root_path) : (redirect_to(root_path) unless current_user.admin?)
  end
end
