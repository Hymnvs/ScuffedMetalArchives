require 'test_helper'

class BandTest < ActiveSupport::TestCase
  test "should not save band without required fields" do
    band = Band.new
    assert_not band.save
  end
end
