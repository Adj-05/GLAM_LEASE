require "open-uri"


User.destroy_all
user1 = User.new(email: "sasha@glamlease.com", password: "123456", password_confirmation: "123456")
user1.save!
user2 = User.new(email: "meven@glamlease.com", password: "123456", password_confirmation: "123456")
user2.save!
user3 = User.new(email: "aurelie@glamlease.com", password: "123456", password_confirmation: "123456")
user3.save!







file = URI.parse("https://www.net-a-porter.com/variants/images/1647597343734696/in/w2000_q60.jpg").open
clothe1 = Clothe.new(type: "haut", color: "blue", size: "s", genre: "homme", price_per_day: "25", user_id: user1.id )
clothe1.photo.attach(io: file, filename: "clothe1.png", content_type: "image/png")
clothe1.save
