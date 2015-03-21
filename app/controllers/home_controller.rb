class HomeController < ApplicationController
	def index
	@post = Post.last
    
    @accelerators = Accelerator.all
    @events = Event.all
    @founders = Founder.all
    @fundings = Funding.all
    @investors = Investor.all
    @jobs = Job.all
    @marketplaces = Marketplace.all
    @pitches = Pitch.all
    @spaces = Space.all
    @stresses = Stress.all
    @questions = Question.all

    @activities = (@accelerators + @questions + @events + @founders + @fundings + @investors + @jobs + @marketplaces + @pitches + @spaces + @stresses).sort_by {|a| a.created_at}.reverse
	
    q = params[:q]
    @founders = Founder.search(title_cont: q).result
    @jobs = Job.search(title_cont: q).result
    end
end
