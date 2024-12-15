require "open-uri"

class Feed < ApplicationRecord
  belongs_to :user

  def refresh
    puts url
    rss = URI.open(url).read
    feed = Feedjira.parse(rss)
    update(title: feed.title)
    feed.entries.first.title
    update(title: feed.title)
    puts "Title: #{feed.title}"
    # feed.items.each do |item|
    # puts "Item: #{item.title}"
    # end
  end
end
