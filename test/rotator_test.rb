require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/rotator'

class RotatorTest < Minitest::Test

    def test_does_rotator_exist
    rotator = Rotator.new
    assert_instance_of Rotator, rotator
     end

     def test_key_can_generate_abcd_rotation
     rotator = Rotator.new
    #  key.random_key
     assert_equal 0, rotator.key_a
     end

end