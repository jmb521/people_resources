class CreateTags < ActiveRecord::Migration[6.0]
  def change
    create_table :tags do |t|
      t.integer :category_id 
      t.integer :resource_id 
      
      t.timestamps
    end
  end
end
