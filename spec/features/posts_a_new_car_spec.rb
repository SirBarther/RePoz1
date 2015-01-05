require "rails_helper"

feature "sales posts a new manufacturer", %Q{
	
	As a car salesperson:

		I want to record a newly acquired car
		So that I can list it in my lot

	Acceptance Criteria:

  [X] I must specify the manufacturer, color, year, and mileage 
 			of the car (an association between the car and an existing 
 			manufacturer should be created).

  [X] Only years from 1920 and above can be specified.

  [X] I can optionally specify a description of the car.

  [X] If I enter all of the required information in the required 
 			formats, the car is recorded and I am presented with a notification 
 			of success.
 
  [X] If I do not specify all of the required information in the required 
 			formats, the car is not recorded and I am presented with errors.

  [X] Upon successfully creating a car, I am redirected back to the index 
 			of cars.

} do

	scenario " ** Sales successfully posts a new car ** " do

	car = FactoryGirl.create(:car)
	man_u = FactoryGirl.create(:manufacturer)

	visit	root_path

	click_on "Manufacturers"
	
	click_on "Test 2"

	click_on "Create a new"

	fill_in "Model", with: car.mname
	fill_in "Color", with: car.color
	fill_in "Year", with: car.year
	fill_in "Mileage", with: car.mileage

	click_button "submit"

	expect(page).to have_content("Your car was successfully posted.")

	end

	scenario " ** Sales unsuccessfully posts a new car ** " do

	man_u = FactoryGirl.create(:manufacturer)
	car = FactoryGirl.create(:car)

	visit	root_path

	click_on "Manufacturers"

	click_on "Test 3"

	click_on "Create a new"

	fill_in "Year", with: "1900"

	click_button "submit"

	expect(page).to have_content("SO SRY")
	expect(page).to have_content("Color can't be blank")
	expect(page).to have_content("Year is not included in the list")

	end

end
