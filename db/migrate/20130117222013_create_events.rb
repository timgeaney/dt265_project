class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :category
      t.datetime :event_date
      t.string :description
      t.string :contact_phone
      t.string :address
      t.string :country
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
