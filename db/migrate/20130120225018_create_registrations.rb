class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
    	t.integer :user_id
    	t.integer :event_id
    	t.string :note

      t.timestamps
    end
  end
end
