require 'test_helper'

class OriginPathTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert OriginPath.new.valid?
  end
end
