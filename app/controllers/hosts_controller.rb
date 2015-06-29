class HostsController < CrudController
  self.permitted_attrs = [:name, :phone, :about, :email, :url, :latitude, :longitude, :country, :city, :street_address]
  self.search_columns = [:name, :country, :city, :street_address]

  def index
    super
    @hash = Gmaps4rails.build_markers(@hosts) do |host, marker|
      marker.lat host.latitude
      marker.lng host.longitude
    end
  end
end