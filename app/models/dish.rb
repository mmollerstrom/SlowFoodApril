class Dish < ApplicationRecord
  belongs_to :menu

  validates_presence_of :name
  validates_presence_of :price
  has_attached_file :image
end
