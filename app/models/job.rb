class Job < ActiveRecord::Base
	validates_presence_of  :title, :body, :contact_info, :location, :compensation
end
