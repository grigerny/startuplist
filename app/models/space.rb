class Space < ActiveRecord::Base
	validates_presence_of :location, :title, :body, :contact_info
end
