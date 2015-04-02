class Offre < ActiveRecord::Base
  belongs_to :user

  validates :user_id, :presence => true

  #Geocode
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  def address=(val)
    update_address = val+", Swiss"
    write_attribute(:address, update_address)
  end


  def self.search(search)
    if search
      where('title LIKE ? OR descr LIKE ?', "%#{search}%", "%#{search}%")
    else
      all
    end
  end
end
