class RestaurantsController < ApplicationController

  RESTAURANTS = {
    1 => { name: "Dishoom", address: "Shoreditch, London", category: "indian" },
    2 => { name: "Sushi Samba", address: "City, London", category: "japanese" }
  }


  def index
    #Get a list of restaurants
    #instance method send information down stream to view (@)
    #simply a variable with @
    @category = params[:food_type]

    if params[:food_type].blank?
      @restaurants = RESTAURANTS
    else
      @restaurants = RESTAURANTS.select do |id, r|
        r[:category] == @category
      end
    end
  end

  def create
    render plain: "Add to DB restaurant '#{params[:name]}' with address '#{params[:address]}'"
  end

  def show
    #show one restaurant
    @restaurant = RESTAURANTS[params[:id].to_i]
  end




end
