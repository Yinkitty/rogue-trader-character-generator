class DefaultCareers < ActiveRecord::Migration
  def self.up
    Career.delete_all
    
    Career.create(:name => 'Astropath Transcendent')
    Career.create(:name => 'Arch-Militant')
    Career.create(:name => 'Void-Master')
    Career.create(:name => 'Explorator')
    Career.create(:name => 'Missionary')
    Career.create(:name => 'Seneschal')
    Career.create(:name => 'Navigator')
    Career.create(:name => 'Rogue Trader')
  end

  def self.down
    Career.delete_all
  end
end
