class ManufacturersController < ApplicationController
  
  def index
  	@man_u = Manufacturer.all
  end

  def new
  	@man_u = Manufacturer.new
    @car = Car.new
  end

  def create
  	@man_u = Manufacturer.new(man_u_params)
		if @man_u.save
			redirect_to root_path(@man_u[:id]), notice: 

			"Your Manufacturer was successfully posted."
		else
		  render new_manufacturer_path
		end	
  end

  def show
  	@man_u = Manufacturer.find(params[:id])
  end

  private

	def man_u_params
		params.require(:manufacturer).permit(:name, :country)
	end

end
