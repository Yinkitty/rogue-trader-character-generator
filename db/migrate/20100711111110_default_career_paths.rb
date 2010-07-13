class DefaultCareerPaths < ActiveRecord::Migration
  def self.up
    CareerPath.delete_all 
    CareerPath.create(:name => 'Arch-Militant')
    CareerPath.create(:name => 'Astropath Transcendent')
    CareerPath.create(:name => 'Explorator')
    CareerPath.create(:name => 'Missionary')
    CareerPath.create(:name => 'Navigator')
    CareerPath.create(:name => 'Rogue Trader')
    CareerPath.create(:name => 'Seneschal')
    CareerPath.create(:name => 'Void-Master')
  end

  def self.down
    CareerPath.delete_all
  end
end
