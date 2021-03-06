class Offre < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  validates :user_id, :presence => true

  #Geocode
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  # get address from user
  def address
    user.address
  end

  def address_changed?
    user.address_changed?
  end

  def longitude
    user.longitude
  end

  def latitude
    user.latitude
  end


  # validates image
  # has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" },  :default_url => "/images/:style/missing.png"
  #validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  #validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :image, :content_type => /\Aimage/

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
