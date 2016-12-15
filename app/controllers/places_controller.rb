class PlacesController < ApplicationController
    
    def index
        @places = Place.all
    end
    
    def show
        @place = Place.find(params[:id])
    end
    
    def new
        @place = Place.new
    end
    
    def create
        @place = Place.new(place_params)
        
        if @place.save
            flash[:notice] = "You just saved a favorite place."
            redirect_to root_path
        else
            flash[:alert] = "Somethings wrong, please try again."
            render :new
        end
    end
    
    def destroy
        
    end
    
    private
    
    def place_params
        params.require(:place).permit(:title)
    end
    
end
