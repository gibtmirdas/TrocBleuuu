class Offre < ActiveRecord::Base
  belongs_to :user

  validates :user_id, :presence => true

  def self.search(search)
    if search
      where('title LIKE ? OR descr LIKE ?', "%#{search}%", "%#{search}%")
    else
      all
    end
  end
end
