class CreateDressings < ActiveRecord::Migration
  def self.up
    create_table :dressings do |t|
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :dressings
  end
end
