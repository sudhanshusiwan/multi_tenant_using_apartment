class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :cart

  validates :email, :presence => true

  after_create :create_cart

  private

  def create_cart
    Cart.create!({user_id: self.id})
  end
end
