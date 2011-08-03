class NewspostsController < ApplicationController
  
  def index
    @posts = Newspost.all(:order => "created_at DESC")
    @event = Event.last
  end

end
