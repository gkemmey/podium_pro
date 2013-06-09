class StaticPagesController < ApplicationController

  def home
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.limit(3)
      @my_items = current_user.microposts.limit(3)
    end
  end
  
  def help
  end

  def about
  end

  def contact
  end
end
