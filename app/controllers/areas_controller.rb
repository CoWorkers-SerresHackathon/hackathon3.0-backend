class AreasController < ApplicationController
    
   before_action :authorize
    
    def index
        @areas = Area.all
    end   
    
    def show
        @area = Area.find(params[:id])
    end
    
    def new
        @area = Area.new
    end
    
    def create
        @area = Area.new(area_params)
        if @area.save
            redirect_to areas_path
        else
            render 'New'
        end
    end
    
    def edit
        @area = Area.find(params[:id])
    end
    
    def update
        @area = Area.find(params[:id])
        if @area.update_attributes(area_params)
            redirect_to areas_path
        else 
            render 'edit'
        end
    end
    
    def destroy
        @area = Area.find(params[:id])
        @area.destroy
        redirect_to areas_path
    end
    
    
    private
    
    def area_params
        params.require(:area).permit(:location, :latitude, :longtitude)
    end
    
    
    
    
end
