class Funding < ActiveRecord::Base
	validates_presence_of :link, :title, :body, :contact_info
end
