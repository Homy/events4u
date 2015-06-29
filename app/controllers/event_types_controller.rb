class EventTypesController < CrudController
  self.permitted_attrs = [:name]
  self.search_columns = [:name]
end
