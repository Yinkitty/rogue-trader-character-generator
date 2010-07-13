class CreateOriginPathStages < ActiveRecord::Migration
  def self.up
    create_table :origin_path_stages do |t|
      t.string :name, :null => false
      t.timestamps
    end
  end
  
  def self.down
    drop_table :origin_path_stages
  end
end
