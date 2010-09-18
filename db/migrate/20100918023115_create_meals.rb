class CreateMeals < ActiveRecord::Migration
  def self.up
    create_table :meals do |t|
      t.string :title
      t.string :side_title
      t.string :other_title
      t.string :day
      t.boolean :published

      t.timestamps
    end
  end

  def self.down
    drop_table :meals
  end
end
