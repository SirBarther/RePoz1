require "rails_helper"

feature "sales posts a new manufacturer", %Q{
	
	As a car salesperson:

		I want to record a newly acquired car
		So that I can list it in my lot

	Acceptance Criteria:

  [ ] I must specify the manufacturer, color, year, and mileage 
 			of the car (an association between the car and an existing 
 			manufacturer should be created).

  [ ] Only years from 1920 and above can be specified.

  [ ] I can optionally specify a description of the car.

  [ ] If I enter all of the required information in the required 
 			formats, the car is recorded and I am presented with a notification 
 			of success.
 
  [ ] If I do not specify all of the required information in the required 
 			formats, the car is not recorded and I am presented with errors.

  [ ] Upon successfully creating a car, I am redirected back to the index 
 			of cars.

} do


	scenario " ** Sales successfully posts a new car ** " do

	car = FactoryGirl.create(:car)

	visit	root_path

	click_on "Manufacturers"
	
	click_on "Ford"

	click_on "Create a new"


	fill_in "Model", with: car.mname
	fill_in "Color", with: car.color
	fill_in "Year", with: car.year
	fill_in "Mileage", with: car.mileage

	click_button "submit"

	expect(page).to have_content("Your car was successfully posted.")

	end

	scenario " ** Sales unsuccessfully posts a new car ** " do

	visit	root_path

	click_on "Cars"

	click_on "Ford"

	click_button "submit"

	expect(page).to have_content("SO SRY")		

	end

end
