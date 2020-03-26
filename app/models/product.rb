class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :images, dependent: :destroy
  has_many :comments
  accepts_nested_attributes_for :images, allow_destroy: true
end
