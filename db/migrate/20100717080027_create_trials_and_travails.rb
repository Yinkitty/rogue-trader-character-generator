class CreateTrialsAndTravails < ActiveRecord::Migration
  def self.up
    create_table :trials_and_travails do |t|
      t.string :name
      t.timestamps
    end
  end
  
  def self.down
    drop_table :trials_and_travails
  end
end
