class Place < ApplicationRecord
  # talks to the "places" table
  has_many :entries 
  # had to add this code to run the seeds file to pre-populate with data
end
