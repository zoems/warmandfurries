class AddKeySkillToFurries < ActiveRecord::Migration[7.1]
  def change
    add_column :furries, :key_skill, :string
  end
end
