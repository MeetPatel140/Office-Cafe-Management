# app/models/menu.rb
class Menu < ApplicationRecord
  belongs_to :category
  has_many :orders

  # other attributes and validations
end
