class CreateIntTests < ActiveRecord::Migration
  def change
    create_table :int_tests do |t|
      t.integer :twitter_post_id

      t.timestamps
    end
  end
end
