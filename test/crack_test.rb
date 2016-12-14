require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/crack'

class CrackTest < Minitest::Test

  def test_its_class_exits
    c = Crack.new("49ztsswa5ws0.tbdqkbeqlbgqnbnrzrsrt", 121316)
    assert_instance_of Crack, c
  end

  def test_it_can_decript_a_message_with_given_date
    c = Crack.new("49ztsswa5ws0.tbdqkbeqlbgqnbnrzrsrt", 121316)
    decrypted_message = "love, symbols. 1 2 2 3 4 5 ..end.."
    assert_equal decrypted_message, c.crack

  end


end
