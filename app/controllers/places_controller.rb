class PlacesController < CrudController
  self.permitted_attrs = [:name, :phone, :about, :email, :latitude, :longitude, :country, :city, :street_address]
  self.search_columns = [:name]

  def index
    super
    @hash = Gmaps4rails.build_markers(@places) do |place, marker|
      marker.lat place.latitude
      marker.lng place.longitude
    end
  end
end