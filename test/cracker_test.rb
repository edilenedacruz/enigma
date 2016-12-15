require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/cracker'

class CrackerTest < Minitest::Test

  def test_its_class_exits
    c = Cracker.new("Gc#8;9u ebu%", 141216)
    assert_instance_of Cracker, c
  end

  def test_it_can_access_message
    c = Cracker.new("Gc#8;9u ebu%", 141216)
    assert_equal "Gc#8;9u ebu%", c.input
  end

  def test_it_can_decript_a_message_with_given_date
    c = Cracker.new("Gc#8;9u ebu%", 141216)
    decrypted_message = "Peace..end.."
    assert_equal decrypted_message, c.crack("Gc#8;9u ebu%")
  end

  def test_it_can_access_date
    c = Cracker.new("Gc#8;9u ebu%", 141216)
    assert_equal 141216, c.date
  end

  def test_it_can_use_todays_date_if_not_provided
    c = Cracker.new("Gc#8;9u ebu%", 141216)
    assert_equal Fixnum, c.date.class
  end
end
