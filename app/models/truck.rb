class Truck < ApplicationRecord
  # Enum for type of facility.
  enum facility_type: { "Truck":1, "Push Cart":2, "N/A": 3 }

  # just sends the attributes needed to show on the map.
  def send_three_attributes
    location = self.location.split(",")
    lat = location[0].to_f
    lng = location[1].to_f
    infowindow = "Name- #{self.name}<br />Address- #{self.address}<br />
    Facility type- #{self.facility_type}<br />Menu- #{self.food_items}<br />
    Timings- #{self.operational_time}"
    return {lat:lat, lng:lng, infowindow: infowindow}
  end

end
