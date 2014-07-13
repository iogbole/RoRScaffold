class Jedi < ActiveRecord::Base
   mount_uploader :picture, PictureUploader

  attr :street_address, :street_address_2

  before_save :set_location

  def set_location
    location = "#{street_address} #{street_address_2}"
  end

end
