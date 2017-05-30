class OrderStatus < ApplicationRecord:Base
  has_many :orders
end
