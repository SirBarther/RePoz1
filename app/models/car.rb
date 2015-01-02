class Car < ActiveRecord::Base

	belongs_to :manufacturer

	validates :mid, presence: true
	validates :mname, presence: true, length: { minimum: 4 }
	validates :color, presence: true, length: { minimum: 4 }
	validates :year, inclusion: { in: 1920..2050 }
	#validates :year, presence: true, length: { in: 1920..2015 }
	validates :mileage, presence: true

end
