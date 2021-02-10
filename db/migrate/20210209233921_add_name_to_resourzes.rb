class AddNameToResourzes < ActiveRecord::Migration[6.0]
  def change
    add_column :resourzes, :name, :string
  end
end
