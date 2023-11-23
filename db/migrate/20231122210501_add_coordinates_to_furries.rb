class AddCoordinatesToFurries < ActiveRecord::Migration[7.1]
  def change
    add_column :furries, :latitude, :float
    add_column :furries, :longitude, :float
  end
end
