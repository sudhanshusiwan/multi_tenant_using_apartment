class Shop < ActiveRecord::Base

  after_create :create_tenant

  validates :name, :subdomain, :presence => true

  private

  def create_tenant
    Apartment::Tenant.create(subdomain)
  end
end
