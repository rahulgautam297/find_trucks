class TrucksController < ApplicationController

  def index
    # Gets all the trucks where co-ordinates are not zero and gets the attributes needed by calling the function from model.
    @trucks = Truck.where.not(location: "0,0").as_json(methods: :send_three_attributes, only: [])
  end
end
