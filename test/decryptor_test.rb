# require 'simplecov'
# SimpleCov.start
require 'minitest/autorun'
require 'minitest/emoji'
require './lib/decryptor'
require 'pry'

class DecryptorTest < Minitest::Test

  def test_decryptor_exists
    decryptor = Decryptor.new
    assert_instance_of Decryptor, decryptor
  end

  def test_it_receives_message_input
    decryptor = Decryptor.new("Ra9jl&")
    assert_equal "Ra9jl&", decryptor.input
  end

  def test_it_can_access_key_value
    decryptor = Decryptor.new("Ra9jl&")
    assert_equal 5, decryptor.key.length
  end

  def test_it_can_access_offset_value
    decryptor = Decryptor.new("Ra9jl&")
    assert_equal 4, decryptor.offset.length
  end

end
