# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#
User.find_or_create_by(email: "user1@test.com") do |user|
  user.password = "password"
end

open = Status.find_or_create_by(name: 'Open')
Status.find_or_create_by(name: 'Closed')

project = Project.find_or_create_by(name: "Project 1", status_id: open.id)
Comment.find_or_create_by(message: "message", project_id: project.id)
