class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  has_many :offres, :dependent => :destroy

  #Geocode
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  def address
    update_address = [street, npa, commune, 'Suisse'].compact.join(', ')
    write_attribute(:address, update_address)
  end

end
