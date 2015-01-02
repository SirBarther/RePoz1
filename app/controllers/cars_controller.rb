class CarsController < ApplicationController

	def index
	end

	def show
	end

	def new
		@car = Car.new
	end

	def create
		@car = Car.new(car_params)
		if @car.save
			redirect_to car_index_path(@man_u[:id]), notice: 

			"Your car was successfully posted."
		else
		render new_car_path
		end	
	end

end