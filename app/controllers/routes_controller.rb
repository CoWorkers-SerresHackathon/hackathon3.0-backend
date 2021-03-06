class RoutesController < ApplicationController
    before_action :authorize
    
    
    
    
    def index

        @routes = Route.all
        
    end
    
    def show
        @route = Route.find(params[:id])
    end
    
    
    def new
        @route = Route.new
    end
    
    def create 
        @area = Area.find(route_params[:area_id])
        @route = @area.routes.new(route_params)
        if @route.save
            redirect_to routes_path
        else 
            render 'new'
        end    
    end
    
    def edit
        @route = Route.find(params[:id])
    end
    
    def update
        @route = Route.find(params[:id])
        if @route.update_attributes(route_params)
            redirect_to routes_path
        else
            render 'edit'
        end
    end
    
    def destroy
        @route = Route.find(params[:id])
        @route.destroy
        redirect_to routes_path
    end
    
    private
    def route_params
        params.require(:route).permit(:start_point, :destination, :distance)
    end    
    
    
    
    
end
