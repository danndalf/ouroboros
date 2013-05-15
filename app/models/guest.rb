class Guest < ActiveRecord::Base
  attr_accessible :address, :email, :name, :phone
  default_scope order('name ASC')
  validates :name, :presence => true
end
