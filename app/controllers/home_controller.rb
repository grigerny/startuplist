class HomeController < ApplicationController
	def index
	@users = User.all
	  @post = Post.last
    q = params[:q]
    @founders = Founder.search(title_cont: q).result
    @jobs = Job.search(title_cont: q).result
    end
end
