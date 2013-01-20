class CreateEventUsers < ActiveRecord::Migration
  def change
    create_table :event_users do |t|
      t.integer :attendee_id
      t.integer :host_id

      t.timestamps
    end

    add_index :event_users, :attendee_id
    add_index :event_users, :host_id
    add_index :event_users, [:attendee_id, :host_id], unique: true
  end
end
