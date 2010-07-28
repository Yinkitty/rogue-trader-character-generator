class DefaultRoles < ActiveRecord::Migration
  def self.up
    Role.delete_all
    
    Role.create(:name => 'Admin')
    Role.create(:name => 'Registered')
    Role.create(:name => 'Guest')
  end

  def self.down
    Role.delete_all
  end
end
