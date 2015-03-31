# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def create_users
  puts 'Create User gibtmirdas'
  thomas = User.new(:firstname => 'Thomas', :lastname => 'Bertrand', :email => 't.bertrand@outlook.com', :username => 'gibtmirdas', :password => 'asdasdasd', :street => '72, Rue de la tambourine', :npa => '1227', :commune => 'Carouge', :phone => '079 821 51 95')
  thomas.save!

  puts 'Create User aldazj'
  jayro = User.new(:firstname => 'Jayro', :lastname => 'Aldaz', :email => 'jayroaldaz@hotmail.com', :username => 'aldazj', :password => 'opengeneva', :street => '29, Chemin des Deux-Communes', :npa => '1226', :commune => 'Thônex', :phone => '076 482 26 18')
  jayro.save!

  puts 'Create User edison'
  edison = User.new(:firstname => 'Edison', :lastname => 'Aldaz', :email => 'edisonaldaz@hotmail.com', :username => 'edison', :password => 'opengeneva', :street => '29, Chemin des Deux-Communes', :npa => '1226', :commune => 'Thônex', :phone => '076 482 26 18')
  edison.save!
end

def create_offres
  puts 'Create Offre 1 => gibtmirdas'
  id_thomas = User.find_by_username('gibtmirdas').id
  offre_thomas = Offre.new(:user_id => id_thomas, :title => 'Offre 1', :descr => 'Description de l\'offre', :price => 0)
  offre_thomas.save!

  puts 'Create Offre 2 => aldazj'
  id_aldazj = User.find_by_username('aldazj').id
  offre_aldazj = Offre.new(:user_id => id_aldazj, :title => 'Offre 2', :descr => 'Description de l\'offre', :price => 10)
  offre_aldazj.save!

  puts 'Create Offre 3 => aldazj'
  id_aldazj = User.find_by_username('aldazj').id
  offre_aldazj2 = Offre.new(:user_id => id_aldazj, :title => 'Offre 3', :descr => 'Description de l\'offre', :price => 0)
  offre_aldazj2.save!

  puts 'Create Offre 4 => edison'
  id_edison = User.find_by_username('edison').id
  offre_edison = Offre.new(:user_id => id_edison, :title => 'Offre 4', :descr => 'Description de l\'offre', :price => 2)
  offre_edison.save!
end

create_users
create_offres