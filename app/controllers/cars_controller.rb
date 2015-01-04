class CarsController < ApplicationController

	def index
		@car = Car.all
	end

	def show
		@car = Car.find(params[:id])
	end

	def new
		@manufacturers = Manufacturer.all
		@car = Car.new
		@mid = Manufacturer.find(params[:manufacturer_id])
	end

	def create
		@mid = Manufacturer.find(params[:manufacturer_id])
		@car = Car.new(car_params)
		if @car.save
			redirect_to manufacturer_cars_path, notice: 

			"Your car was successfully posted."
		else
		render :new
		end	
	end

	private

	def car_params
		params.require(:car).permit(:mid, :mname, :color, :year, :mileage, :description)
	end

end