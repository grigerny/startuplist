class App < ActiveRecord::Base
  validates_presence_of  :title, :body, :tagline, :link
end
