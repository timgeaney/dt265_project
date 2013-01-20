class RemoveCategoriesFromEvents < ActiveRecord::Migration
  def up
    remove_column :events, :category
  end

  def down
    add_column :events, :category, :string
  end
end
