class AddMotivationToCharacters < ActiveRecord::Migration
  def self.up
    add_column :characters, :motivation_id, :integer
  end

  def self.down
    remove_column :characters, :motivation_id
  end
end
