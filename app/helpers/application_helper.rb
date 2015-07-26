module ApplicationHelper
  def format_about(item)
    truncate(item.about, :length => 100, :omission => '...')
  end
end
