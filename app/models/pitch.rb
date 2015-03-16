class Pitch < ActiveRecord::Base
	validates_presence_of :title, :body, :link, :contact_info
end
