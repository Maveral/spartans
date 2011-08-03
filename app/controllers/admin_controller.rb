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
  
  def eventsindex
    @events = Event.all(:order => "created_at DESC")
  end
  
  def newevent
    @event = Event.new
  end
  
  def eventcreate
    Event.create!(:content => params[:content][:content])
    redirect_to :action => :eventsindex
  end
  
  def eventedit
    @event = Event.find(params[:id])
  end
  
  def eventupdate
    @event = Event.find(params[:id])
    if @event.update_attributes(:content => params[:content][:content])
      redirect_to :action => :eventsindex
    else
      render :action => :eventedit
    end
  end
  
  def eventdelete
    @event = Event.find(params[:post])
    @event.destroy
    redirect_to :action => :eventsindex
  end

end
