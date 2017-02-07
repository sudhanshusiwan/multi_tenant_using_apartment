class CartItem < ActiveRecord::Base
  belongs_to :cart

  validates :cart, :presence => true
end