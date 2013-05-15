class Recording < ActiveRecord::Base
  attr_accessible :description, :place, :url, :when
end
