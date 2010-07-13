class AddStatsToCharacters < ActiveRecord::Migration
  def self.up
    add_column :characters, :weapon_skill, :integer, :null => false
    add_column :characters, :ballistic_skill, :integer, :null => false
    add_column :characters, :strength, :integer, :null => false
    add_column :characters, :toughness, :integer, :null => false
    add_column :characters, :agility, :integer, :null => false
    add_column :characters, :intelligence, :integer, :null => false
    add_column :characters, :perception, :integer, :null => false
    add_column :characters, :will_power, :integer, :null => false
    add_column :characters, :fellowship, :integer, :null => false
  end

  def self.down
    remove_column :characters, :fellowship
    remove_column :characters, :will_power
    remove_column :characters, :perception
    remove_column :characters, :intelligence
    remove_column :characters, :agility
    remove_column :characters, :toughness
    remove_column :characters, :strength
    remove_column :characters, :ballistic_skill
    remove_column :characters, :weapon_skill
  end
end
