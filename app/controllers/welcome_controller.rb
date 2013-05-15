class WelcomeController < ApplicationController

	def index
		@stories = Story.limit(10).find(:all)
	end
	
end
