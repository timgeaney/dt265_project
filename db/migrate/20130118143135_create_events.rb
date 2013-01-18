class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :category
      t.string :location

      t.timestamps
    end
  end
end
