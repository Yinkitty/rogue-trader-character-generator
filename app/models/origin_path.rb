class OriginPath < ActiveRecord::Base
  attr_accessible :origin_path_stage_id, :name, :description
  
  belongs_to :origin_path_stage
end
