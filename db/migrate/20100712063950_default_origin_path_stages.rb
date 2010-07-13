class DefaultOriginPathStages < ActiveRecord::Migration
  def self.up
    OriginPathStage.delete_all
    
    OriginPathStage.create(:name => "Home World")
    OriginPathStage.create(:name => "Birthright")
    OriginPathStage.create(:name => "Lure of the Void")
    OriginPathStage.create(:name => "Trials and Travails")
    OriginPathStage.create(:name => "Motivation")
    OriginPathStage.create(:name => "Career")
  end

  def self.down
    OriginPathStage.delete_all
  end
end
