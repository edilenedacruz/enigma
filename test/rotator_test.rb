require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/rotator'

class RotatorTest < Minitest::Test

  def test_does_rotator_exist
    rotator = Rotator.new
    assert_instance_of Rotator, rotator
  end

  def test_it_can_generate_abcd_rotation
    rotator = Rotator.new
    assert_equal Array, rotator.rotations.class
  end

  def test_rotator_has_4_elements
    rotator = Rotator.new
    assert_equal 4, rotator.rotations.length
  end

end
