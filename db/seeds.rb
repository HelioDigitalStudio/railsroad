# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ title: "Star Wars" }, { title: "Lord of the Rings" }])
#   Character.create(title: "Luke", movie: movies.first)

puts "Destroying data"
User.destroy_all
Career.destroy_all
Milestone.destroy_all
UserMilestone.destroy_all
UserCareer.destroy_all

puts "Creating data"
user1 = User.create!(email: "user1@gmail.com", password: "testuser1")
user2 = User.create!(email: "user2@gmail.com", password: "testuser2")
user3 = User.create!(email: "user3@gmail.com", password: "testuser3")

career1 = Career.create(title: "Backend Developer")
career2 = Career.create(title: "Frontend Developer" )
career3 = Career.create(title: "Freelance")

milestone1 = Milestone.create(title: "Ruby", content: "Learn Ruby", career: career1)
milestone2 = Milestone.create(title: "Ruby on Rails", content: "Learn Ruby on Rails", career: career1)
milestone3 = Milestone.create(title: "HTML", content: "Learn HTML", career: career2)
milestone4 = Milestone.create(title: "CSS", content: "Learn CSS", career: career2)
milestone5 = Milestone.create(title: "Javascript", content: "Learn Javascript", career: career2)
milestone6 = Milestone.create(title: "React", content: "Learn React", career: career2)
milestone7 = Milestone.create(title: "Freelance", content: "introduction to being a freelancer", career: career3)

user_milestone1 = UserMilestone.create(user: user1, milestone: milestone1)
user_milestone2 = UserMilestone.create(user: user1, milestone: milestone2)
user_milestone3 = UserMilestone.create(user: user1, milestone: milestone3)
user_milestone4 = UserMilestone.create(user: user1, milestone: milestone4)
user_milestone5 = UserMilestone.create(user: user1, milestone: milestone5)
user_milestone6 = UserMilestone.create(user: user1, milestone: milestone6)
user_milestone7 = UserMilestone.create(user: user1, milestone: milestone7)

user_career1 = UserCareer.create(user: user1, career: career1)
user_career2 = UserCareer.create(user: user1, career: career2)
user_career3 = UserCareer.create(user: user1, career: career3)

puts "Finished"
puts "Created #{User.count} users"
puts "Created #{Career.count} careers"
puts "Created #{Milestone.count} milestones"
puts "Created #{UserMilestone.count} user_milestones"
puts "Created #{UserCareer.count} user_careers"