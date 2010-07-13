class CreateOriginPaths < ActiveRecord::Migration
  def self.up
    create_table :origin_paths do |t|
      t.integer :origin_path_stage_id, :null => false
      t.string :name
      t.text :description
      t.timestamps
    end
  end
  
  def self.down
    drop_table :origin_paths
  end
end
