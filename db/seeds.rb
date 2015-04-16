def create_category
  cTool = Category.new(name: 'Outils')
  cTool.save!
  cService = Category.new(name: 'Services')
  cService.save!
  cLogement = Category.new(name: 'Logements')
  cLogement.save!
end

def create_users
  puts 'Create User gibtmirdas'
  thomas = User.new(
    :firstname => 'Thomas',
    :lastname => 'Bertrand',
    :email => 't.bertrand@outlook.com',
    :username => 'gibtmirdas',
    :password => 'asdasdasd',
    :address => 'Rue de la tambourine 72',
    :npa => '1227',
    :commune => 'Carouge',
    :phone => '079 821 51 95',
    :latitude => 46.1746,
    :longitude => 6.14205)
  thomas.save!

  puts 'Create User aldazj'
  jayro = User.new(
    :firstname => 'Jayro',
    :lastname => 'Aldaz',
    :email => 'jayroaldaz@hotmail.com',
    :username => 'aldazj',
    :password => 'opengeneva',
    :address => 'Chemin des Deux-Communes 29',
    :npa => '1226',
    :commune => 'Thônex',
    :phone => '076 482 26 18',
    :latitude => 46.1938,
    :longitude => 6.2025)
  jayro.save!

  puts 'Create User edison'
  edison = User.new(
    :firstname => 'Edison',
    :lastname => 'Aldaz',
    :email => 'edisonaldaz@hotmail.com',
    :username => 'edison',
    :password => 'opengeneva',
    :address => 'Rue des mouettes 15',
    :npa => '1227',
    :commune => 'Carouge',
    :phone => '076 482 26 18',
    :latitude => 46.1888,
    :longitude => 6.13937)
  edison.save!

  puts 'Create User jenny'
  jenny = User.new(
    :firstname => 'Jenny',
    :lastname => 'Clerc',
    :email => 'jennyclerc@hotmail.com',
    :username => 'clercj0',
    :password => 'opengeneva',
    :address => 'Bernex en combes 19',
    :npa => '1233',
    :commune => 'Bernex',
    :phone => '076 482 26 18',
    :latitude => 46.1793,
    :longitude => 6.0798)
  jenny.save!
end

def create_offres
  puts 'Create Offre 1 => gibtmirdas'
  id_thomas = User.find_by_username('gibtmirdas').id
  offre_thomas = Offre.new(:user_id => id_thomas, :title => 'Offre 1', :descr => 'Description de l\'offre', :price => 0)
  offre_thomas.image = File.open('app/assets/images/perso/1024px-Drill2.jpeg',)
  offre_thomas.category = Category.find_by_name('Outils')
  offre_thomas.save!

  puts 'Create Offre 2 => aldazj'
  id_aldazj = User.find_by_username('aldazj').id
  offre_aldazj = Offre.new(:user_id => id_aldazj, :title => 'Offre 2', :descr => 'Description de l\'offre', :price => 10)
  offre_aldazj.image = File.open('app/assets/images/perso/power-drill-152897_1280.png')
  offre_aldazj.category = Category.find_by_name('Outils')
  offre_aldazj.save!

  puts 'Create Offre 3 => aldazj'
  id_aldazj = User.find_by_username('aldazj').id
  offre_aldazj2 = Offre.new(:user_id => id_aldazj, :title => 'Offre 3', :descr => 'Description de l\'offre', :price => 0)
  offre_aldazj2.image = File.open('app/assets/images/perso/tondeuse-tractee.jpeg')
  offre_aldazj2.category = Category.find_by_name('Services')
  offre_aldazj2.save!

  puts 'Create Offre 4 => edison'
  id_edison = User.find_by_username('edison').id
  offre_edison = Offre.new(:user_id => id_edison, :title => 'Offre 4', :descr => 'Description de l\'offre', :price => 2)
  offre_edison.image = File.open('app/assets/images/perso/power-drill-154903_1280.png')
  offre_edison.category = Category.find_by_name('Logements')
  offre_edison.save!
end

#mandatory
create_category

#testing
create_users
create_offres