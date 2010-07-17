class Character < ActiveRecord::Base
  attr_accessible :name, :user_id, :career_path_id, :experience_to_spend, :experience_spent, :id,
    :weapon_skill, :ballistic_skill, :strength, :toughness, :agility, :intelligence, :perception, :will_power,
    :fellowship
  
  validates_presence_of :name, :career_path, :weapon_skill, :ballistic_skill,
    :strength, :toughness, :agility, :intelligence, :perception, :will_power, :fellowship
  validates_uniqueness_of :name
  validates_length_of :name,
    :within => 4..60,
    :too_long => 'must be sixty characters or less.',
    :too_short => 'must be four characters or more.'
  
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
end
