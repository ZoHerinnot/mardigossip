# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

City.destroy_all
User.destroy_all
GossipTag.destroy_all
Gossip.destroy_all
Tag.destroy_all
PrivateMessage.destroy_all
Comment.destroy_all

city = []
user = []
tag = []
gossip = []
#Création de 10 villes
10.times do |i|
  city[i] = City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
  puts "city #{i}"
end

# Creation de 10 utilisateurs
  10.times do |i|
    user[i] = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.safe_email, age: rand(18..60), description: Faker::Quote.matz, city_id: city[rand(10)].id)
    puts "user #{i}"
  end

# Creation de 10 tags
10.times do |i|
  tag[i] = Tag.create(title_tag: Faker::Job.field)
  puts "Tag #{i}"
end

# Création de 20 gossip
  20.times do |i|
  	gossip[i] = Gossip.create(title: Faker::Verb.ing_form, content: Faker::Quote.yoda, user_id: user[rand(10)].id , tags: [tag[rand(0..9)],tag[rand(0..9)]])
    puts "gossip #{i}"
  end

#Creation de 30 GossipTag
  30.times do |i|

    gossipTag = GossipTag.create(tag_id: tag[rand(10)].id, gossip_id: gossip[rand(20)].id)
     puts "gossipTag #{i}"
 end

# Création de 20 MessagePrive
 
 20.times do |i|
    privatemessage = PrivateMessage.create(content: Faker::Quotes::Shakespeare.hamlet_quote, sender_id: user[rand(10)].id, recipient_id: user[rand(10)].id,recipient2_id: user[rand(10)].id)
    puts "privatemessage #{i}"
 end

 20.times do |i|

  Comment.create!(content: Faker::Quotes::Shakespeare.romeo_and_juliet_quote, user_id: user[rand(10)].id,  gossip_id: gossip[rand(20)].id)

  puts "comment #{i}"

end