class PlanetsController < ApplicationController

    def index 
        @planets = Planet.all
    end

    def show
        @planet = Planet.find(params[:id])
         @reviews = @planet.my_reviews
    end

end
