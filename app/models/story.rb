class Story < ActiveRecord::Base
  attr_accessible :content, :name, :submitter, :when
end
