class Tweet < ActiveRecord::Base
  attr_accessible :id_str, :text, :tuser_id_str, :tuser_screen_name, :tweet_created_at
end
