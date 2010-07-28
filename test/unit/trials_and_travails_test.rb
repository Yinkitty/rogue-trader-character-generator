require 'test_helper'

class TrialsAndTravailsTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert TrialsAndTravails.new.valid?
  end
end
