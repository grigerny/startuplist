class SearchController < ApplicationController

    def index
    @post = Post.last
    q = params[:q]
    @founders = Founder.search(title_cont: q).result
    @jobs = Job.search(title_cont: q).result
    @stresses = Stress.search(title_cont: q).result
    @accelerators = Accelerator.search(title_cont: q).result
    @events = Event.search(title_cont: q).result
    @fundings = Funding.search(title_cont: q).result
    @marketplaces = Marketplace.search(title_cont: q).result
    @pitches = Pitch.search(title_cont: q).result
    @spaces = Space.search(title_cont: q).result
    end
end
