class Show < ActiveRecord::Base
  
  def show_listings
    ShowListing.where(show_id: self.id)
  end
end
