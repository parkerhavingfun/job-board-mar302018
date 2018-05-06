class ListingsController < ApplicationController
    
    
    def index
        @listings = Listing.all
    end
    
    def new
        flash[:success] = "Your organization's new listing has been posted!"
        @new_listing = Listing.new
    end
    
    def create
        @new_listing = Listing.new(listing_params)
        if @new_listing.save
            flash[:success] = "Your organization's new listing has been posted!"
            redirect_to listings_url
        else
            flash[:warning] = "Oops, something went wrong"
            render 'new'
        end
    end
    
    def show
        @listing = Listing.find_by(id: params[:id])
    end
    
    def edit
        
    end
    
    def update
        
    end
    
    def destroy
        
    end
    
    
    protected
    
    def listing_params
        params.require(:listing).permit(:title, :overview, :location, :remote, :category, :experience_level)
    end
    
    
    
    
end
