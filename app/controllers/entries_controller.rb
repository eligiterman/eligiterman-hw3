class EntriesController < ApplicationController

  # def index
  #   # find all the Entry rows
  #   @entries = Entry.all
  #   # render entries/index view    
  # end
  
  def create
    # start with a new Entry
    @entry = Entry.new

    # assign user-entered form data to Entry's columns
    @entry["occured_on"] = params["occured_on"]
    @entry["description"] = params["description"]

    # assign relationship between Entry and Place
    @entry["place_id"] = params["place_id"]

    # save Entry row
    @entry.save
    
    # redirect user
    redirect_to "/places/#{@entry["place_id"]}"
  end

end
