require 'faker'

User.destroy_all
City.destroy_all
Gossip.destroy_all
Tag.destroy_all
TagGossipJoin.destroy_all
PrivateMessage.destroy_all
Comment.destroy_all

10.times do |i|
	City.create(name: Faker::Address.city, zip_code: rand(10000..20000))
end

10.times do |i|
	User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Movie.quote, email: Faker::Internet.email, age: rand(14..75), city: City.all.sample, password: Faker::Hipster.word)
end

20.times do |i|
	Gossip.create(title: Faker::Hipster.word, content: Faker::Hipster.paragraphs.join("\n"), user: User.all.sample)
end

10.times do |i|
	Tag.create(title: Faker::Lorem.word)
end

40.times do |i|
	TagGossipJoin.create(tag: Tag.all.sample, gossip: Gossip.all.sample)
end

5.times do |i|
	PrivateMessage.create(sender: User.all.sample, recipient: User.all.sample, content: Faker::SiliconValley.quote)
end

100.times do |i|
	Comment.create(gossip: Gossip.all.sample, user: User.all.sample, content: Faker::SiliconValley.quote)
end

200.times do |i|
	Like.create(gossip: Gossip.all.sample, user: User.all.sample)
end