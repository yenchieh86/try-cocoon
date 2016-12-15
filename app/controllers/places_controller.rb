class PlacesController < ApplicationController
    
    def index
        @places = Place.all
    end
    
    def new
        @place = Place.new
    end
    
    def create
        @place = Place.new(place_params)
        
        if @place.save
            redirect_to root_path
        else
            render :new
        end
    end
    
    def edit
      @place = Place.find(params[:id])
    end
    
    def update
      @place = Place.find(params[:id])
      if @place.update_attributes(place_params)
        redirect_to root_path
      else
        render :edit
      end
    end

    private
    
    def place_params
        params.require(:place).permit(:title, addresses_attributes: [:id, :city, :street, :_destroy])
    end
    
end
