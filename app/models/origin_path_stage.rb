class OriginPathStage < ActiveRecord::Base
  attr_accessible :name
  
  has_many :origin_paths
end
