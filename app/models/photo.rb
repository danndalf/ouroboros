class Photo < ActiveRecord::Base
	attr_accessible :description, :photograph, :place, :title, :when

	validates :photograph, :presence => true
	
	include Paperclip
	has_attached_file :photograph,
		:styles => {
			:thumb  => "100x100#",
			:small  => "284x284>",
			:large  => "940x940>"
		},
		:storage => :s3,
		:s3_credentials => ::Rails.root.join('config', 's3.yml'),
		:path => "/:style/:id/:filename"
end
