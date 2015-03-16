class Founder < ActiveRecord::Base

validates_presence_of :compensation, :title, :body, :contact_info
end
