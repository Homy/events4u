module PlaceHelper
  def format_about(place)
    truncate(place.about, :length => 50, :omission => '...')
  end
end