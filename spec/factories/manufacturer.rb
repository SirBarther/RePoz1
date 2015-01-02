FactoryGirl.define do
	factory :manufacturer do
		sequence(:name) {|n| "Test #{n}" }
		country 'Test Country'
	end
end