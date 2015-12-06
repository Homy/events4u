module UsersHelper
  def verify_is_admin
    (current_user.nil?) ? redirect_to(:new_user_registration_url) : ((flash[:notice] = "Not authorized to do that.";redirect_to(root_path)) unless current_user.admin?)
  end
end