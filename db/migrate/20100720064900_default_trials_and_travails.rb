class DefaultTrialsAndTravails < ActiveRecord::Migration
  def self.up
    TrialsAndTravails.delete_all
    
    TrialsAndTravails.create(:name => 'The Hand of War')
    TrialsAndTravails.create(:name => 'Press-Ganged')
    TrialsAndTravails.create(:name => 'Calamity')
    TrialsAndTravails.create(:name => 'Ship-Lorn')
    TrialsAndTravails.create(:name => 'Dark Voyage')
    TrialsAndTravails.create(:name => 'High Vendetta')
  end

  def self.down
    TrialsAndTravails.delete_all
  end
end
