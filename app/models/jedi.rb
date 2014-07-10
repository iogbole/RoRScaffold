class Jedi < ActiveRecord::Base
	mount_uploader :picture, PictureUploader
  
  before :save, :set_location

  def set_location
    location = "#{street_address} #{street_address_2} #{county} #{postal_code} #{country}"
  end

end
