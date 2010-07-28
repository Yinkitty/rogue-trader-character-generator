class Character < ActiveRecord::Base
  attr_accessible :name, :user_id, :experience_to_spend, :experience_spent, :id,
    :weapon_skill, :ballistic_skill, :strength, :toughness, :agility, :intelligence, :perception, :will_power,
    :fellowship, :home_world_id, :lure_of_the_void_id, :motivation_id, :birthright_id, :career_id, :trials_and_travails_id,
    :gender
  attr_writer :current_step
  
  belongs_to :user
  belongs_to :home_world
  belongs_to :birthright
  belongs_to :career
  belongs_to :lure_of_the_void
  belongs_to :motivation
  belongs_to :trials_and_travails
  
  validates_presence_of :name, :if => lambda { |c| c.current_step == "attributes" }
  validates_presence_of :weapon_skill, :if => lambda { |c| c.current_step == "attributes" }
  validates_presence_of :ballistic_skill, :if => lambda { |c| c.current_step == "attributes" }
  validates_presence_of :strength, :if => lambda { |c| c.current_step == "attributes" }
  validates_presence_of :toughness, :if => lambda { |c| c.current_step == "attributes" }
  validates_presence_of :agility, :if => lambda { |c| c.current_step == "attributes" }
  validates_presence_of :intelligence, :if => lambda { |c| c.current_step == "attributes" }
  validates_presence_of :perception, :if => lambda { |c| c.current_step == "attributes" }
  validates_presence_of :will_power, :if => lambda { |c| c.current_step == "attributes" }
  validates_presence_of :fellowship, :if => lambda { |c| c.current_step == "attributes" }
  validates_presence_of :gender, :if => lambda { |c| c.current_step == "attributes" }
  validates_uniqueness_of :name, :if => lambda { |c| c.current_step == "attributes" }
  validates_length_of :name, :if => lambda { |c| c.current_step == "attributes" },
    :within => 4..60,
    :too_long => 'must be sixty characters or less.',
    :too_short => 'must be four characters or more.'
    
  validates_presence_of :home_world_id, :if => lambda { |c| c.current_step == "origins" }
  validates_presence_of :lure_of_the_void_id, :if => lambda { |c| c.current_step == "origins" }
  validates_presence_of :motivation_id, :if => lambda { |c| c.current_step == "origins" }
  validates_presence_of :trials_and_travails_id, :if => lambda { |c| c.current_step == "origins" }
  validates_presence_of :birthright_id, :if => lambda { |c| c.current_step == "origins" }
  validates_presence_of :career_id, :if => lambda { |c| c.current_step == "origins" }
  
  def self.generate_stat
    new_stat = 27 + rand(10) + rand(10)
  end
  
  def self.career_rank(experience_spent)
    case experience_spent
      when 0..4999
        '0'
      when 5000..6999
        '1'
      when 7000..9999
        '2'
      when 10000..12999
        '3'
      when 13000..16999
        '4'
      when 17000..20999
        '5'
      when 21000..24999
        '6'
      when 25000..29999
        '7'
      else '8'
    end
  end
  
  def steps
    %w[attributes origins]
  end
  
  def current_step
    @current_step || steps.first
  end
  
  def next_step
    self.current_step = steps[steps.index(current_step)+1]
  end
  
  def previous_step
    self.current_step = steps[steps.index(current_step)-1]
  end
  
  def first_step?
    current_step == steps.first
  end
  
  def last_step?
    current_step == steps.last
  end
  
  def all_valid?
    steps.all? do |step|
      self.current_step = step
      valid?
    end
  end
end
