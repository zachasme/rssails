class Feed::RefreshJob < ApplicationJob
  def perform(feed)
    feed.refresh
  end
end
