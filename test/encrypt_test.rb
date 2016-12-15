require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/encrypt'
require 'pry'

class EncryptTest < Minitest::Test

  def test_does_encrypt_class_exist
    encrypt = Encrypt.new
    assert_instance_of Encrypt, encrypt
  end

  def test_does_it_have_access_to_message
    encrypt = Encrypt.new("Turing")
    assert_equal "Turing", encrypt.input
  end

  def test_it_reads_a_file
    encrypt = Encrypt.new
    expected = "Turing"
    ARGV[0] = "message.txt"
    assert expected, encrypt.read_file
  end

  def test_it_encrypts_a_file
    encrypt = Encrypt.new
    expected = "6PM testing ..end.."
    ARGV[1] = "encrypted.txt"
    assert expected, encrypt.encrypt_message
  end

end
