class Airport < ActiveRecord::Base
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
end
