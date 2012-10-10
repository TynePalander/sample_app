atom_feed do |feed|
  feed.title "q_furby tweets"
  #feed.updated @tweets.maximum(:tweet_created_at)
  feed.updated Time.now
  
  @tweets.each do |tweet|
    feed.entry tweet, published: tweet.tweet_created_at do |entry|
      entry.title 'Title'
      entry.content tweet.text
      entry.author do |author|
        author.name tweet.tuser_screen_name
      end
    end
  end
end
