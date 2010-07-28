class CreateBirthrights < ActiveRecord::Migration
  def self.up
    create_table :birthrights do |t|
      t.string :name
      t.timestamps
    end
  end
  
  def self.down
    drop_table :birthrights
  end
end
