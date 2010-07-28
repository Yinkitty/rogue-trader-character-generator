class AddCareerToCharacters < ActiveRecord::Migration
  def self.up
    add_column :characters, :career_id, :integer
  end

  def self.down
    remove_column :characters, :career_id
  end
end
