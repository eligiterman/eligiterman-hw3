class PlacesController < ApplicationController

  def index
    # find all Places rows
    @places = Place.all
    # render places/index view
  end

  def show
    # find a Place
    @place = Place.find_by({"id" => params["id"]})
    
    # find Entries for the Place
    @entries = Entry.where({"place_id" => @place["id"]})

    # render entries/show view with all details about Place
  end

  def new
    # render view with new Places form
  end
  
  def create
    #start with a new Place
    @place = Place.new
    
    # assign user-entered form data to Place's columns
    @place["name"] = params["name"]

    # save Place row
    @place.save

    # redirect user
    redirect_to "/places/#{@place["id"]}"
  end

end
