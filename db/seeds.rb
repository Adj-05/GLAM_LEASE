require "open-uri"


User.destroy_all
user1 = User.new(email: "sasha@glamlease.com", password: "123456", password_confirmation: "123456")
user1.save!
user2 = User.new(email: "meven@glamlease.com", password: "123456", password_confirmation: "123456")
user2.save!
user3 = User.new(email: "aurelie@glamlease.com", password: "123456", password_confirmation: "123456")
user3.save!



clothe1 = Clothe.new(clothe_type: "haut", color: "blue", size: "s", genre: "homme", price_per_day: "25", user_id: User.last.id )
clothe1.save!
