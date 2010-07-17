require 'test_helper'

class BirthrightTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Birthright.new.valid?
  end
end
