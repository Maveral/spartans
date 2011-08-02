class NewspostsController < ApplicationController
  
  def index
    @posts = Newspost.all(:order => "created_at DESC")
  end

end
