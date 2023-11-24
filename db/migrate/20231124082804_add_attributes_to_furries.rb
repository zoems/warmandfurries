class AddAttributesToFurries < ActiveRecord::Migration[7.1]
  def change
    add_column :furries, :energy, :integer
    add_column :furries, :cuddleable, :integer
    add_column :furries, :tough_love, :integer
  end
end
