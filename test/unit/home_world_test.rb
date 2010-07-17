require 'test_helper'

class HomeWorldTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert HomeWorld.new.valid?
  end
end
