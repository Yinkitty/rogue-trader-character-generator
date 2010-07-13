class CreateCharacters < ActiveRecord::Migration
  def self.up
    create_table :characters do |t|
      t.string :name
      t.integer :user_id
      t.integer :career_path_id
      t.integer :experience_to_spend, :default => 500
      t.integer :experience_spent, :default => 4500
      t.timestamps
    end
  end
  
  def self.down
    drop_table :characters
  end
end
