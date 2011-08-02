class AdminController < ApplicationController
  uses_tiny_mce
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
    @news = Newspost.find(params[:id])
  end

  def newsupdate
    @news = Newspost.find(params[:id])
    if @news.update_attributes(:title => params[:title][:title], :content => params[:content][:content])
      redirect_to :action => :newsindex
    else
      render :action => :newsedit
    end
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
