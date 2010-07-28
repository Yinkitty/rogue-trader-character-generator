require 'test_helper'

class MotivationTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Motivation.new.valid?
  end
end
