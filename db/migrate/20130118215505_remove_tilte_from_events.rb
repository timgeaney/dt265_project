class RemoveTilteFromEvents < ActiveRecord::Migration
  def up
    remove_column :events, :tilte
  end

  def down
    add_column :events, :tilte, :string
  end
end
