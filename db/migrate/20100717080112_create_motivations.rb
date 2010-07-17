class CreateMotivations < ActiveRecord::Migration
  def self.up
    create_table :motivations do |t|
      t.string :name
      t.timestamps
    end
  end
  
  def self.down
    drop_table :motivations
  end
end
