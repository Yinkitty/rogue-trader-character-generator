class DefaultOriginPaths < ActiveRecord::Migration
  def self.up
    OriginPath.delete_all
    
    OriginPath.create(:name => "Death World", :origin_path_stage_id => OriginPathStage.find_by_name("Home World").id)
    OriginPath.create(:name => "Void Born", :origin_path_stage_id => OriginPathStage.find_by_name("Home World").id)
    OriginPath.create(:name => "Forge World", :origin_path_stage_id => OriginPathStage.find_by_name("Home World").id)
    OriginPath.create(:name => "Hive World", :origin_path_stage_id => OriginPathStage.find_by_name("Home World").id)
    OriginPath.create(:name => "Imperial World", :origin_path_stage_id => OriginPathStage.find_by_name("Home World").id)
    OriginPath.create(:name => "Noble Born", :origin_path_stage_id => OriginPathStage.find_by_name("Home World").id)
    
    OriginPath.create(:name => "Scavenger", :origin_path_stage_id => OriginPathStage.find_by_name("Birthright").id)
    OriginPath.create(:name => "Scapegrace", :origin_path_stage_id => OriginPathStage.find_by_name("Birthright").id)
    OriginPath.create(:name => "Stubjack", :origin_path_stage_id => OriginPathStage.find_by_name("Birthright").id)
    OriginPath.create(:name => "Child of the Creed", :origin_path_stage_id => OriginPathStage.find_by_name("Birthright").id)
    OriginPath.create(:name => "Savant", :origin_path_stage_id => OriginPathStage.find_by_name("Birthright").id)
    OriginPath.create(:name => "Vaunted", :origin_path_stage_id => OriginPathStage.find_by_name("Birthright").id)
    
    OriginPath.create(:name => "Tainted", :origin_path_stage_id => OriginPathStage.find_by_name("Lure of the Void").id)
    OriginPath.create(:name => "Criminal", :origin_path_stage_id => OriginPathStage.find_by_name("Lure of the Void").id)
    OriginPath.create(:name => "Renegade", :origin_path_stage_id => OriginPathStage.find_by_name("Lure of the Void").id)
    OriginPath.create(:name => "Duty Bound", :origin_path_stage_id => OriginPathStage.find_by_name("Lure of the Void").id)
    OriginPath.create(:name => "Zealot", :origin_path_stage_id => OriginPathStage.find_by_name("Lure of the Void").id)
    OriginPath.create(:name => "Chosen by Destiny", :origin_path_stage_id => OriginPathStage.find_by_name("Lure of the Void").id)
    
    OriginPath.create(:name => "The Hand of War", :origin_path_stage_id => OriginPathStage.find_by_name("Trials and Travails").id)
    OriginPath.create(:name => "Press-Ganged", :origin_path_stage_id => OriginPathStage.find_by_name("Trials and Travails").id)
    OriginPath.create(:name => "Calamity", :origin_path_stage_id => OriginPathStage.find_by_name("Trials and Travails").id)
    OriginPath.create(:name => "Ship-Lorn", :origin_path_stage_id => OriginPathStage.find_by_name("Trials and Travails").id)
    OriginPath.create(:name => "Dark Voyage", :origin_path_stage_id => OriginPathStage.find_by_name("Trials and Travails").id)
    OriginPath.create(:name => "High Vendetta", :origin_path_stage_id => OriginPathStage.find_by_name("Trials and Travails").id)
    
    OriginPath.create(:name => "Endurance", :origin_path_stage_id => OriginPathStage.find_by_name("Motivation").id)
    OriginPath.create(:name => "Fortune", :origin_path_stage_id => OriginPathStage.find_by_name("Motivation").id)
    OriginPath.create(:name => "Vengeance", :origin_path_stage_id => OriginPathStage.find_by_name("Motivation").id)
    OriginPath.create(:name => "Renown", :origin_path_stage_id => OriginPathStage.find_by_name("Motivation").id)
    OriginPath.create(:name => "Pride", :origin_path_stage_id => OriginPathStage.find_by_name("Motivation").id)
    OriginPath.create(:name => "Prestige", :origin_path_stage_id => OriginPathStage.find_by_name("Motivation").id)
    
    OriginPath.create(:name => "Astropath Transcendent", :origin_path_stage_id => OriginPathStage.find_by_name("Career").id)
    OriginPath.create(:name => "Arch-Militant", :origin_path_stage_id => OriginPathStage.find_by_name("Career").id)
    OriginPath.create(:name => "Void-Master", :origin_path_stage_id => OriginPathStage.find_by_name("Career").id)
    OriginPath.create(:name => "Explorator", :origin_path_stage_id => OriginPathStage.find_by_name("Career").id)
    OriginPath.create(:name => "Missionary", :origin_path_stage_id => OriginPathStage.find_by_name("Career").id)
    OriginPath.create(:name => "Seneschal", :origin_path_stage_id => OriginPathStage.find_by_name("Career").id)
    OriginPath.create(:name => "Navigator", :origin_path_stage_id => OriginPathStage.find_by_name("Career").id)
    OriginPath.create(:name => "Rogue Trader", :origin_path_stage_id => OriginPathStage.find_by_name("Career").id)
  end

  def self.down
    OriginPath.delete_all
  end
end
