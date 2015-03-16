class Event < ActiveRecord::Base

	validates_presence_of :location, :title, :body, :on => :create, :message => "can't be blank"
end
