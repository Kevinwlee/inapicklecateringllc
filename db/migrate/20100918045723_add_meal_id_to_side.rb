class AddMealIdToSide < ActiveRecord::Migration
  def self.up
    add_column :sides, :meal_id, :integer
  end

  def self.down
    remove_column :sides, :meal_id
  end
end
