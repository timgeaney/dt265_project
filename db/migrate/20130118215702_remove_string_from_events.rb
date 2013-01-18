class RemoveStringFromEvents < ActiveRecord::Migration
  def up
    remove_column :events, :string
  end

  def down
    add_column :events, :string, :string
  end
end
