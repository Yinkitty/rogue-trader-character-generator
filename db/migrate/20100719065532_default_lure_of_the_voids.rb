class DefaultLureOfTheVoids < ActiveRecord::Migration
  def self.up
    LureOfTheVoid.delete_all
    
    LureOfTheVoid.create(:name => 'Tainted')
    LureOfTheVoid.create(:name => 'Criminal')
    LureOfTheVoid.create(:name => 'Renegade')
    LureOfTheVoid.create(:name => 'Duty Bound')
    LureOfTheVoid.create(:name => 'Zealot')
    LureOfTheVoid.create(:name => 'Chosen by Destiny')
  end

  def self.down
    LureOfTheVoid.delete_all
  end
end
