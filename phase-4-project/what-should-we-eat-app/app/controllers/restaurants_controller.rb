class RestaurantsController < ApplicationController
    def index 
        render json: Restaurant.all, status: :ok
    end

    def show
        restaurant = Restaurant.find(params[:id])
        render json: restaurant, status: :ok
        # , include: :cast_members after 'restaurant' maybe
    end

    def create
        restaurant = Restaurant.create!(production_params)
        render json: restaurant, status: :created
    end

    def destroy
        restaurant = Restaurant.find(params[:id])
        restaurant.destroy
        head :no_content
    end
end
