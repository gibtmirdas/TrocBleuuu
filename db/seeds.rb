# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'Create User t.bertrand@outlook.com'
thomas = User.new(:firstname => 'Thomas', :lastname => 'Bertrand', :email => 't.bertrand@outlook.com', :username => 'gibtmirdas', :password => 'asdasdasd', :street => '72, Rue de la tambourine', :npa => '1227', :commune => 'Carouge', :phone => '079 821 51 95')
thomas.save!

puts 'Create Offre 1 => t.bertrand@outlook.com'
id_thomas = User.find_by_email('t.bertrand@outlook.com').id
offre_thomas = Offre.new(:user_id => id_thomas, :title => 'Offre 1', :descr => 'Description de l\'offre', :price => 0)
offre_thomas.save!