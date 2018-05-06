class StaticsController < ApplicationController
    
    def home
        @listings = Listing.order(created_at: :desc).first(3)
    end
    
end
