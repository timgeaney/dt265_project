class DropEventUser < ActiveRecord::Migration
  def up
  	drop_table :event_users
  end

  def down
  	raise ActiveRecord::IrreversibleMigration
  end
end
