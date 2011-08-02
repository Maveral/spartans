class GbpostsController < ApplicationController
  def index
    @gbposts = Gbpost.all(:order => "created_at DESC")
  end
  
  def create
    Gbpost.create!(:nick => params[:nick][:nick], :content => params[:content][:content])
    redirect_to :action => :index
  end

end
