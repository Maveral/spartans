class NewspostsController < ApplicationController
  
  def index
    @posts = Newspost.all
  end

end
