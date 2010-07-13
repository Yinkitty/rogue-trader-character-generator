require 'test_helper'

class CareerPathTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert CareerPath.new.valid?
  end
end
