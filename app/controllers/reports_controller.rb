class ReportsController < CrudController
  self.permitted_attrs = [:event_id, :title, :content]
  self.search_columns = [:title]
end