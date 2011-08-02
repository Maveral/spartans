class AdminController < ApplicationController
  def newsindex
    @newses = Newspost.all(:order => "created_at DESC")
  end

  def newsnew
    @news = Newspost.new
  end
  
  def newscreate
    Newspost.create!(:title => params[:title][:title], :content => params[:content][:content])
    redirect_to :action => :newsindex
  end

  def newsedit
    @news = Newspost.find()
  end

  def newsupdate
  end

  def newsdelete
    @news = Newspost.find(params[:post])
    @news.destroy
    redirect_to :action => :newsindex
  end

  def gbindex
    @gbposts = Gbpost.all
  end

  def gbdelete
    @gbpost = Gbpost.find(params[:post])
    @gbpost.destroy
    redirect_to :action => :gbindex
  end

end
