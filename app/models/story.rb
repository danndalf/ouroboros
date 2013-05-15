class Story < ActiveRecord::Base
  attr_accessible :content, :title, :email, :submitter, :when, :place
  default_scope order('created_at DESC')

  validates :content, :presence => true
  validates :title, :presence => true
end
