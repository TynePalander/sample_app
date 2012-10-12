class Tweet < ActiveRecord::Base
  attr_accessible :id_str, :text, :tuser_id_str, :tuser_screen_name, :tweet_created_at

  default_scope order: 'tweets.id_str DESC' # works for now, but what if id_str get another digit
end
