class AddRoleIdToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :role_id, :integer, :default => Role.find_by_name("Registered").id
  end

  def self.down
    remove_column :users, :role_id
  end
end
