class WelcomeController < ApplicationController
  def index
  end

  def new
  	@location = Location.new()
  end

  def create  	
  	Location.create(params.require(:location).permit(:lat,:lng, :name, :phone))
  	redirect_to root_path
  end

  def getlist
  	@location = Location.all
  	respond_to do |format|
  		format.json { render json: @location}
  	end  	
  end

  def destroy
  	Location.destroy(params[:id])
  	redirect_to root_path
  end
end
