require 'test_helper'

class GenreTest < ActiveSupport::TestCase
  test "should not save genre without required fields" do
    genre = Genre.new
    assert_not genre.save
  end
end
