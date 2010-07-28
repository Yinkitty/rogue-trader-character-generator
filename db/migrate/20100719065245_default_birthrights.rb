class DefaultBirthrights < ActiveRecord::Migration
  def self.up
    Birthright.delete_all
    
    Birthright.create(:name => 'Scavenger')
    Birthright.create(:name => 'Scapegrace')
    Birthright.create(:name => 'Stubjack')
    Birthright.create(:name => 'Child of the Creed')
    Birthright.create(:name => 'Savant')
    Birthright.create(:name => 'Vaunted')
  end

  def self.down
    Birthright.delete_all
  end
end
