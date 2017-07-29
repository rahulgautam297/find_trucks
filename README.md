# README

* Ruby version- 2.3.1

* Rails version- 5.0.4

# Project

Create a service that tells the user what types of food trucks might be found near a specific location on a map.

### Architecture

I have created one table named Truck with following attribute-

* name
* facility_type (have kept this one integer because there are three types of facility and used enum to get value of all three.)
* location
* address
* food_items
* operational_time

Database - PostgreSQL

### Gems

* Roo- I used this one too read file from CSV. Script to read values is in db/seeds.rb and the script itself is in trucks/file.csv.

* Twitter-bootstrap-rails- To include bootstrap library.

* Jquery-ui-rails- Used this one for slider.

### Important files
1. app/views/trucks/index.html.erb- This one contains the main page and Google Maps, reset button and slider javascript code.
2. app/models/truck.rb- Contains "facility_type" enum and a method to get specific attributes(lat,lng and infowindow) when fetching all trucks.
3. app/controllers/trucks_controller.rb- Contains action/method for index page. Fetches all the trucks which has co-ordinates as JSON with specific attributes.
4. app/assets/stylesheets/trucks.scss- Contains css.
5. app/views/layouts/application.html.erb - Contains script tag for Google Maps
6. Test files- test/controllers/trucks_controller_test.rb, test/models/trucks_test.rb
7. db/seeds.rb- Contains script to read and create trucks object from CSV file.
8. config/routes.rb - Contains routes.
9. Gemfile- Contains gems.

```
Further I would like to add some react components to it for better UI/UX.
```
