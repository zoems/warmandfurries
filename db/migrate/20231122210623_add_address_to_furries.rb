class AddAddressToFurries < ActiveRecord::Migration[7.1]
  def change
    add_column :furries, :address, :string
  end
end
