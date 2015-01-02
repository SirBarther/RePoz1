class Manufacturer < ActiveRecord::Base
	has_many :cars

	validates :name, presence: true, length: { minimum: 4 }
	validates :country, presence: true, length: { minimum: 3 }
end
