class HostsController < CrudController
  self.permitted_attrs = [:name, :phone, :about, :email, :url, :longitude, :latitude, :country, :city, :street_address]
  self.search_columns = [:name, :country, :city, :street_address]

  def index
    super
    @hash = Gmaps4rails.build_markers(@hosts) do |host, marker|
      marker.lat host.latitude
      marker.lng host.longitude
      marker.infowindow render_to_string(:partial => "/hosts/infowindow", :locals => {:object => host})
    end
  end
end