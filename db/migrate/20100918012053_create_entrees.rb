class CreateEntrees < ActiveRecord::Migration
  def self.up
    create_table :entrees do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :entrees
  end
end
