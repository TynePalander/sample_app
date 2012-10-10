class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :text
      t.string :id_str
      t.datetime :tweet_created_at
      t.string :tuser_id_str
      t.string :tuser_screen_name

      t.timestamps
    end
  end
end
