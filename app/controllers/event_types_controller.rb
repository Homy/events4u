class EventTypesController < CrudController
  self.permitted_attrs = [:name]
end
