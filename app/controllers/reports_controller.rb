class ReportsController < CrudController
  self.permitted_attrs = [:author_id, :event_id, :title, :content, :is_draft]
  self.search_columns = [:title]
end