class GbpostsController < ApplicationController
  def index
    @gbposts = Gbpost.all
    @gbpost = Gbpost.new
  end
  
  def create
    Gbpost.create!(:nick => params[:nick], :content => params[:content])
    redirect_to :action => :index
  end

end
