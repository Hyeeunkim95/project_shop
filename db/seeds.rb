# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
User.create(email: "customer1@likelion.org", password: "111111", password_confirmation: "111111", usergrade: '고객', username: '고객일', phonenumber: '010-1234-5678')
User.create(email: "customer2@likelion.org", password: "111111", password_confirmation: "111111", usergrade: '고객', username: '고객이', phonenumber: '010-1234-5678')
User.create(email: "customer3@likelion.org", password: "111111", password_confirmation: "111111", usergrade: '고객', username: '고객삼', phonenumber: '010-1234-5678')
User.create(email: "designer1@likelion.org", password: "111111", password_confirmation: "111111", usergrade: '디자이너', username: '디자일', phonenumber: '010-1234-5678')
User.create(email: "designer2@likelion.org", password: "111111", password_confirmation: "111111", usergrade: '디자이너', username: '디자이', phonenumber: '010-1234-5678')
User.create(email: "designer3@likelion.org", password: "111111", password_confirmation: "111111", usergrade: '디자이너', username: '디자삼', phonenumber: '010-1234-5678')


Follow.destroy_all
Follow.create(followed_id:"1", follower_id: "4")
Follow.create(followed_id:"1", follower_id: "5")
Follow.create(followed_id:"2", follower_id: "6")

Post.destroy_all
Post.create(content: "첫번째글", user_id: "1")
Post.create(content: "두번째글", user_id: "1")

