class AddBirthrightToCharacters < ActiveRecord::Migration
  def self.up
    add_column :characters, :birthright_id, :integer
  end

  def self.down
    remove_column :characters, :birthright_id
  end
end
