class AddFieldsToEvents < ActiveRecord::Migration
  def change
  	add_column :events, :description, :string
  	add_column :events, :contact_phone, :string
  	add_column :events, :address, :string
  	add_column :events, :country, :string
  	add_column :events, :latitude, :float
  	add_column :events, :longitude, :float
  	add_column :events, :url, :string
  end
end
