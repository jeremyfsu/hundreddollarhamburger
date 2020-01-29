class Airport < ActiveRecord::Base
  has_many :hamburgers
  
  def self.import(filepath)
    File.foreach(filepath) do |line| 
      r = line.split("|")
      a = Airport.new
      a.airport_id = r[0]
      a.name = r[1]
      a.city = r[2]
      a.state = r[3]
      a.lat = r[4]
      a.lon = r[5]
      a.elev = r[6]
      a.save
    end
  end
  
  def vector_from_jvy
    Geokit::default_units = :nms
    jvy_coords = Geokit::LatLng.new(138119.8/3600,308657.3/-3600)
    this_coords = Geokit::LatLng.new(self.lat/3600,self.lon/-3600)
    { 
      distance: jvy_coords.distance_to(this_coords),
      bearing: jvy_coords.heading_to(this_coords)
    }
  end
end
