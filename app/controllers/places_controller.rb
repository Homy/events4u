class PlacesController < CrudController
  self.permitted_attrs = [:name, :phone, :about, :email, :latitude, :longitude, :country, :city, :street_address]
  self.search_columns = [:name]
end