class AddGenderToCharacters < ActiveRecord::Migration
  def self.up
    add_column :characters, :gender, :string
  end

  def self.down
    remove_column :characters, :gender
  end
end
