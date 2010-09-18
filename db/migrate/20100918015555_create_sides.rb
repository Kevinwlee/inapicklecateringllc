class CreateSides < ActiveRecord::Migration
  def self.up
    create_table :sides do |t|
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :sides
  end
end
