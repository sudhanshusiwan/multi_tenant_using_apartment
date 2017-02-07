class CartItemsController < ApplicationController

  def index
    @cart = current_user.cart
  end

  def add
    CartItem.create!({ cart_id: current_user.cart.id, product_id: params[:product_id].to_i })
    redirect_to products_path, notice: 'Product added to cart!'
  rescue => ex
    # todo: notify to exception tracking site for dev use
    redirect_to products_path, notice: 'Some error occurred in adding product to cart, please try again!'
  end

  def checkout
    redirect_to products_path, notice: 'No item in your cart please add some product to cart!' and return if current_user.cart.cart_items.blank?

    current_user.cart.cart_items.destroy_all
  end
end