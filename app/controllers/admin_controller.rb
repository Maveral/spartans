class AdminController < ApplicationController
  def newsindex
    @newses = Newspost.all
  end

  def newsnew
    @news = Newspost.new
  end

  def newsedit
    @news = Newspost.find()
  end

  def newsupdate
  end

  def newsdelete
  end

  def gbindex
    @gbposts = Gbpost.all
  end

  def gbedit
    @gbpost = Gbpost.find()
  end

  def gbupdate
  end

  def gbdelete
  end

end
