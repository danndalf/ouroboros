class Video < ActiveRecord::Base
  attr_accessible :description, :place, :url, :when, :title
  validates :url, :presence => true
end
