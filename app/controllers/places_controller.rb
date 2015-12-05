class PlacesController < CrudController
  self.permitted_attrs = [:name, :phone, :about, :email, :longitude, :latitude, :country, :city, :street_address]
  self.search_columns = [:name, :country, :city, :street_address]

  def index
    super
    @hash = Gmaps4rails.build_markers(@places) do |place, marker|
      marker.lat place.latitude
      marker.lng place.longitude
      marker.infowindow render_to_string(:partial => "/places/infowindow", :locals => {:object => place})
    end
  end
end