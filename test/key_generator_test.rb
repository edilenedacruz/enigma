require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/key_generator'

class KeyGeneratorTest < Minitest::Test

  def test_class_exists
    key = KeyGenerator.new
    assert_instance_of KeyGenerator, KeyGenerator.new
  end

  def test_key_has_five_digits
    key = KeyGenerator.new
    assert_equal 5, key.random_key.length
  end

  def test_key_is_random
    k1 = KeyGenerator.new.random_key
    k2 = KeyGenerator.new.random_key

    refute k1 == k2
  end

end
