class FeedsController < ApplicationController
  def index
    @feeds = Current.user.feeds
  end

  def show
    @feed = Current.user.feeds.find params[:id]
    @feed.refresh
  end
end
