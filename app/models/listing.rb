class Listing < ApplicationRecord
    
    validates_presence_of :title, :overview, :location, :remote, :category, :experience_level
    
end
