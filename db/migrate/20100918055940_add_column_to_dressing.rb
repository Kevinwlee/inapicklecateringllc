class AddColumnToDressing < ActiveRecord::Migration
  def self.up
    add_column :dressings, :meal_id, :integer
  end

  def self.down
    remove_column :dressings, :meal_id
  end
end
