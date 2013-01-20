class CreateCategoriesEvents < ActiveRecord::Migration
  def change
    create_table 	:categories_events, :id=> false do |t|
    	t.integer  	:event_id
    	t.integer	:category_id


      t.timestamps
    end
  end
end
