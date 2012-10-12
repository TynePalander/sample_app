class Tweet < ActiveRecord::Base
  attr_accessible :id_str, :text, :tuser_id_str, :tuser_screen_name, :tweet_created_at

  default_scope order: 'tweets.tweet_created_at, tweets.id_str DESC' # mainly works unless string length changes during that second 
end
