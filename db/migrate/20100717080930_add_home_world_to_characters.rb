class AddHomeWorldToCharacters < ActiveRecord::Migration
  def self.up
    add_column :characters, :home_world_id, :integer
  end

  def self.down
    remove_column :characters, :home_world_id
  end
end
