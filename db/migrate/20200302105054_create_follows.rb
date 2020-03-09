class CreateFollows < ActiveRecord::Migration
  def change
    create_table :follows do |t|
    	t.integer :follower_id
    	t.integer :followed_user_id

      t.timestamps null: false
    end
  end
end
