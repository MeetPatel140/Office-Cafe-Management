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


# Create an admin user
admin_user = User.create(username: 'admin', password: 'admin123', role: 'Admin')

# Example: Create a dynamic category and menu
tea_category = Category.create(name: 'Tea/Coffee')

Menu.create(name: 'Tea', price: 2.5, category: tea_category)
Menu.create(name: 'Coffee', price: 3.0, category: tea_category)
# Add more categories and menus as needed
