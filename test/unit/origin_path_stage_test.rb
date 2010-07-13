require 'test_helper'

class OriginPathStageTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert OriginPathStage.new.valid?
  end
end
