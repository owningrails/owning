# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

account = Account.create!(:name => "Demo")
account.users.create! :name => "dex", :email => "dex@example.com", :password => "test123", :password_confirmation => "test123"
account.users.create! :name => "deb", :email => "deb@example.com", :password => "test123", :password_confirmation => "test123"

account.rooms.create! :name => "Main"