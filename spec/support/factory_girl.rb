require 'factory_girl'

FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "user#{n}@example.com" }
    password 'password'
    password_confirmation 'password'
  end

	RSpec.configure do |config|
	  config.include FactoryGirl::Syntax::Methods
	end
	
end
