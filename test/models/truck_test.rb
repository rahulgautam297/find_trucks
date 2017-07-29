require 'test_helper'

class TruckTest < ActiveSupport::TestCase
  def setup
     @truck = Truck.new(name: "Example truck",
    facility_type: 1,
     address: "Example truck address", location: "Example truck location",
      food_items: "Example truck food items",
       operational_time: "Example truck operational time")
   end
   # object is valid
   test "should be valid" do
     assert @truck.valid?
   end

   # tests the only method in truck model.
   test "send three attributes method" do
      attributes = @truck.send_three_attributes
      for attribute in attributes
        assert_not attribute.nil?
      end
   end

   #tests facility_type enum of truck model
   test "facility_type enum of truck model" do
      facility_types = Truck.facility_types
      assert facility_types["Truck"] == 1
      assert facility_types["Push Cart"] == 2
      assert facility_types["N/A"] == 3
   end
end
