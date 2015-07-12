class UsersController < CrudController
  self.permitted_attrs = [:first_name, :last_name, :email]
end
