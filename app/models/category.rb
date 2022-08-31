class Category < ApplicationRecord
  has_many :cars
   validates :category, presence:true
  validates :name, presence: true
end
