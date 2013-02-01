class AddCetegoriesToEvents < ActiveRecord::Migration
  def change
    add_column :events, :category, :string
  end
end
