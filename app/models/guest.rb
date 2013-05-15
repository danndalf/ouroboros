class Guest < ActiveRecord::Base
  attr_accessible :address, :email, :name, :phone
end
