class PlacesController < ApplicationController
	def index
		@places = Place.all
	end

	def create
		@place = Place.new(place_params)

		if @place.save
			render json: @place
		else
			render json: @place.errors, status: :unprocessable_entity
		end
	end

	private

	def place_params
		params.require(:place).permit(:name, :address, :phone_number, :website)
	end
end
