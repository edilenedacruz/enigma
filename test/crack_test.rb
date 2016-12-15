require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/crack'
require 'pry'

class CrackTest < Minitest::Test

  def test_class_exists
    c = Crack.new("*UlrwiJt5TJN", 141216)
    assert_instance_of Crack, c
  end

  def test_does_it_have_access_to_message
    c = Crack.new("*UlrwiJt5TJN", 141216)
    assert_equal "*UlrwiJt5TJN", c.input
  end

  def test_it_reads_a_file
    c = Crack.new("*UlrwiJt5TJN", 141216)
    expected = "Peace..end.."
    ARGV[0] = "encrypted_test.txt"
    assert expected, c.read_file
  end

  def test_it_can_access_date
    c = Crack.new("*UlrwiJt5TJN", 141216)
    assert_equal 141216, c.date
  end

  def test_it_can_crack_message
    c = Crack.new("*UlrwiJt5TJN", 141216)
    expected = "Peace..end.."
    ARGV[1] = "crack_test.txt"
    assert expected, c.crack_message
  end

end
