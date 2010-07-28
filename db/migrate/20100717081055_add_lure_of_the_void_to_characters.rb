class AddLureOfTheVoidToCharacters < ActiveRecord::Migration
  def self.up
    add_column :characters, :lure_of_the_void_id, :integer
  end

  def self.down
    remove_column :characters, :lure_of_the_void_id
  end
end
