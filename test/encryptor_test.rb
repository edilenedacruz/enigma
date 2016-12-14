require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/encryptor'
require 'pry'

class EncryptorTest < Minitest::Test

  def test_does_encryptor_exist
    encryptor = Encryptor.new
    assert_instance_of Encryptor, encryptor
  end

  def test_it_receives_message_input
    encryptor = Encryptor.new("turing")
    assert_equal "turing", encryptor.input
  end

  def test_it_can_access_key_value
    encryptor = Encryptor.new("turing")
    assert_equal 5, encryptor.key.length
  end

  def test_it_can_access_offset_value
    encryptor = Encryptor.new("turing")
    assert_equal 4, encryptor.offset.length
  end

  def test_it_standard_message_has_same_length_of_encrypted
    e1 = Encryptor.new.encrypted_message("dogs").length
    e2 = Encryptor.new.encrypted_message("cats").length
    assert e1 == e2
  end
end
