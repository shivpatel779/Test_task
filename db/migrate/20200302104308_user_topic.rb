class UserTopic < ActiveRecord::Migration
  def change
  	create_table :users_topics, id: false do |t|
  		t.belongs_to :user
  		t.belongs_to :topic
  		t.timestamps
  	end
  end
end
