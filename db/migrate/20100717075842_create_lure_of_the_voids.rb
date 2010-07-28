class CreateLureOfTheVoids < ActiveRecord::Migration
  def self.up
    create_table :lure_of_the_voids do |t|
      t.string :name
      t.timestamps
    end
  end
  
  def self.down
    drop_table :lure_of_the_voids
  end
end
