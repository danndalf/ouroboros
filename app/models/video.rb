class Video < ActiveRecord::Base
  attr_accessible :description, :place, :url, :when, :title
end
