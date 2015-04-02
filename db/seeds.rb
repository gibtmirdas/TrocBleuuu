# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def create_users
  puts 'Create User gibtmirdas'
  thomas = User.new(:firstname => 'Thomas', :lastname => 'Bertrand', :email => 't.bertrand@outlook.com',
                    :username => 'gibtmirdas', :password => 'asdasdasd',
                    :address => 'Rue de la tambourine 72', :npa => '1227', :commune => 'Carouge', :phone =>
                        '079 821 51 95',:latitude => 46.1746, :longitude => 6.14205 )
  thomas.save!

  puts 'Create User aldazj'
  jayro = User.new(:firstname => 'Jayro', :lastname => 'Aldaz', :email => 'jayroaldaz@hotmail.com',
                   :username => 'aldazj', :password => 'opengeneva', :address => 'Chemin des Deux-Communes 29',
                   :npa => '1226', :commune => 'Thônex', :phone => '076 482 26 18',
                   :latitude => 46.1938, :longitude => 6.2025)
  jayro.save!

  puts 'Create User edison'
  edison = User.new(:firstname => 'Edison', :lastname => 'Aldaz', :email => 'edisonaldaz@hotmail.com',
                    :username => 'edison', :password => 'opengeneva', :address => 'Rue des mouettes 15',
                    :npa => '1227', :commune => 'Carouge', :phone => '076 482 26 18',
                    :latitude => 46.1888, :longitude => 6.13937)
  edison.save!

  puts 'Create User jenny'
  jenny = User.new(:firstname => 'Jenny', :lastname => 'Clerc', :email => 'jennyclerc@hotmail.com',
                    :username => 'clercj0', :password => 'opengeneva', :address => 'Bernex en combes 19',
                    :npa => '1233', :commune => 'Bernex', :phone => '076 482 26 18',
                    :latitude => 46.1793, :longitude => 6.0798)
  jenny.save!
end

def create_offres
  puts 'Create Offre 1 => gibtmirdas'
  thomas = User.find_by_username('gibtmirdas')
  offre_thomas = Offre.new(:user_id => thomas.id, :title => 'Offre 1', :descr => 'Description de l\'offre 1',
                           :price => 0, :latitude => thomas.latitude, :longitude => thomas.longitude,
                           :address => thomas.address.split(',')[0])
  offre_thomas.save!

  puts 'Create Offre 2 => aldazj'
  aldazj = User.find_by_username('aldazj')
  offre_aldazj = Offre.new(:user_id => aldazj.id, :title => 'Offre 2', :descr => 'Description de l\'offre 2',
                           :price => 10, :latitude => aldazj.latitude, :longitude => aldazj.longitude,
                           :address => aldazj.address.split(',')[0])
  offre_aldazj.save!

  puts 'Create Offre 3 => aldazj'
  aldazj = User.find_by_username('aldazj')
  offre_aldazj2 = Offre.new(:user_id => aldazj.id, :title => 'Offre 3', :descr => 'Description de l\'offre 3',
                            :price => 0, :latitude => aldazj.latitude, :longitude => aldazj.longitude,
                            :address => aldazj.address.split(',')[0])
  offre_aldazj2.save!

  puts 'Create Offre 4 => edison'
  edison = User.find_by_username('edison')
  offre_edison = Offre.new(:user_id => edison.id, :title => 'Offre 4', :descr => 'Description de l\'offre 4',
                           :price => 2, :latitude => edison.latitude, :longitude => edison.longitude,
                           :address => edison.address.split(',')[0])
  offre_edison.save!
end

create_users
create_offres