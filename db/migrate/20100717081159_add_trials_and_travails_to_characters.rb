class AddTrialsAndTravailsToCharacters < ActiveRecord::Migration
  def self.up
    add_column :characters, :trials_and_travails_id, :integer
  end

  def self.down
    remove_column :characters, :trials_and_travails_id
  end
end
