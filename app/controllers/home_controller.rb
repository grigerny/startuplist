class HomeController < ApplicationController
	def index
	@post = Post.last
    
    @events = Event.all
    @founders = Founder.all
    @fundings = Funding.all
    @investors = Investor.all
    @jobs = Job.all
    @marketplaces = Marketplace.all
    @pitches = Pitch.all
    @spaces = Space.all
    @stresses = Stress.all

    @activities = (@events + @founders + @fundings + @investors + @jobs + @marketplaces + @pitches + @spaces + @stresses).sort_by {|a| a.created_at}.reverse
	end
end
