class ShowListing < ActiveRecord::Base
  
  def channel
    Channel.find_by(id: self.channel_id)
  end
end
