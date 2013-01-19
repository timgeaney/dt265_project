class ReplaceIdexToEvents < ActiveRecord::Migration
  def up
  	
  end

  def down
  	remove_index :events, :name => "index_events_on_user_id_and_created_at"
  	
  end
end
