class Investor < ActiveRecord::Base
	validates_presence_of :title, :body, :contact_info
end
