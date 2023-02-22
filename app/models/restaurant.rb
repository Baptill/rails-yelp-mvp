class Restaurant < ApplicationRecord
  CATEGORY = ["Chinese", "Italian", "Japanese", "French", "Belgian"]
  has_many :reviews, dependent: :destroy
  validates :name ,presence: true
  validates :address ,presence: true
  validates :category ,presence: true, inclusion: { in: CATEGORY }
end
