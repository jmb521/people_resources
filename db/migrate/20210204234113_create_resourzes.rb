class CreateResourzes < ActiveRecord::Migration[6.0]
  def change
    create_table :resourzes do |t|
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :phone_num
      t.string :site_url
      t.boolean :non_profit, default: false
      t.integer :user_id

      t.timestamps
    end
  end
end
