require "rails_helper"

feature "sales posts a new manufacturer", %Q{
	
	As a car salesperson
	
	- I want to record a car manufacturer
		so that I can keep track of the types of cars found 
		in the lot


	Acceptance Criteria

 - [X] I must specify a manufacturer name and country.

 - [X] If I do not specify the required information, I am presented 
 			with errors.

 - [X] If I specify the required information, the manufacturer is recorded 
 			and I am redirected to the index of manufacturers

} do


	scenario " ** Sales successfully posts a new manufacturer ** " do

	man_u = FactoryGirl.create(:manufacturer)

	visit	root_path

	click_on "Manufacturers"
	click_on "Create a New Manufacturer"

	fill_in "Name", with: man_u.name
	fill_in "Country", with: man_u.country

	click_button "submit"

	expect(page).to have_content("Your Manufacturer was successfully posted.")

	end

	scenario " ** Sales unsuccessfully posts a new manufacturer **" do

	visit	root_path

	click_on "Manufacturers"

	click_on "Create a New Manufacturer"

	click_button "submit"

	expect(page).to have_content("SO SRY")		

	end

end
