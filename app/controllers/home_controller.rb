class HomeController < ApplicationController
	def index
		@post = Post.last
		@spaces = Space.all
	end
end
