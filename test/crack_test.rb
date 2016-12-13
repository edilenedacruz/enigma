require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/crack'

class CrackTest < Minitest::Test

  def test_its_class_exits
    c = Crack.new
    assert_instance_of Crack, c
  end
end
