class DefaultMotivations < ActiveRecord::Migration
  def self.up
    Motivation.delete_all
    
    Motivation.create(:name => 'Endurance')
    Motivation.create(:name => 'Fortune')
    Motivation.create(:name => 'Vengeance')
    Motivation.create(:name => 'Renown')
    Motivation.create(:name => 'Pride')
    Motivation.create(:name => 'Prestige')
  end

  def self.down
    Motivation.delete_all
  end
end
