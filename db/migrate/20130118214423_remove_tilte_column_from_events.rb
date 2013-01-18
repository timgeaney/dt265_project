class RemoveTilteColumnFromEvents < ActiveRecord::Migration
  def up
  end

  def down
  	remove_column :events, :tilte
  end
end
