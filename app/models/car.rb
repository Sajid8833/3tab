class Car < ApplicationRecord
  #has_one_attached :image
  belongs_to :category
  belongs_to :city
  belongs_to :make

  validates :name, presence: true
  validates :model, presence: true
  validates :details, presence: true
  validates :seller_name, presence: true
  validates :condition, presence: true
  validates :issue_year, presence:true
  validates :image, presence:true
end
