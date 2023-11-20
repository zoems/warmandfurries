class CreateFurries < ActiveRecord::Migration[7.1]
  def change
    create_table :furries do |t|
      t.string :name
      t.text :description
      t.float :price
      t.string :fursona
      t.boolean :avalability
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
