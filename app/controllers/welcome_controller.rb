class WelcomeController < ApplicationController

	def index
		@stories = Story.limit(10).find(:all)
		@photos = Photo.limit(2).order('created_at DESC').find(:all)
		@recordings = Recording.limit(2).find(:all)
	end
	
end
