xml.instruct! :xml, version: "1.0" 
xml.rss version: "2.0" do
  xml.channel do
    xml.title "tweets"
    xml.description "Furby Furby"
    xml.link tweets_url

    @tweets.each do |tweet|
      xml.item do
        xml.title "#{tweet.tuser_screen_name} writes"
        xml.description tweet.text
        #xml.pubDate tweet.tweet_created_at.to_s(:rfc822)
        xml.pubDate tweet.tweet_created_at.in_time_zone('Central Time (US & Canada)').rfc822
        xml.link tweet_url(tweet)
        xml.guid tweet_url(tweet)
      end
    end
  end
end

