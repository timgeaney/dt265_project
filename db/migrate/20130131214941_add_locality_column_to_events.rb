class AddLocalityColumnToEvents < ActiveRecord::Migration
  def change
    add_column :events, :locality, :string
  end
end
