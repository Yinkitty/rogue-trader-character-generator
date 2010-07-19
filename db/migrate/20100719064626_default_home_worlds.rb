class DefaultHomeWorlds < ActiveRecord::Migration
  def self.up
    HomeWorld.delete_all
    
    HomeWorld.create(:name => 'Death World')
    HomeWorld.create(:name => 'Void Born')
    HomeWorld.create(:name => 'Forge World')
    HomeWorld.create(:name => 'Hive World')
    HomeWorld.create(:name => 'Imperial World')
    HomeWorld.create(:name => 'Noble Born')
  end

  def self.down
    HomeWorld.delete_all
  end
end
