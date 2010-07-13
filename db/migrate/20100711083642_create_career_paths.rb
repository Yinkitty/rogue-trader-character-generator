class CreateCareerPaths < ActiveRecord::Migration
  def self.up
    create_table :career_paths do |t|
      t.string :name
      t.timestamps
    end
  end
  
  def self.down
    drop_table :career_paths
  end
end
