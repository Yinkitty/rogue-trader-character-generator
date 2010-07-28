class CreateHomeWorlds < ActiveRecord::Migration
  def self.up
    create_table :home_worlds do |t|
      t.string :name
      t.timestamps
    end
  end
  
  def self.down
    drop_table :home_worlds
  end
end
