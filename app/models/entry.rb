class Entry < ApplicationRecord
  # talks to the "entries" table
  belongs_to :place
  # had to add this code to run the seeds file to pre-populate with data
end
