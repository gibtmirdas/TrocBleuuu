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


  # validates image
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" },  :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  # validates category
  validates :category, presence: true

  # search
  def self.search(search)
    if search
      where('title LIKE ? OR descr LIKE ?', "%#{search}%", "%#{search}%")
    else
      all
    end
  end
end
