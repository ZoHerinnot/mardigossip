class CityController < ApplicationController
  def index
  	@city = City.all
  end

  def show
  	@ville = City.find(params[:id].to_i)
  end
end
