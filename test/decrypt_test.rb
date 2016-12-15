require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/decrypt'
require 'pry'

class DecryptTest < Minitest::Test

  def test_does_decrypt_class_exist
    decrypt = Decrypt.new
    assert_instance_of Decrypt, decrypt
  end

  def test_does_it_have_access_to_message
    decrypt = Decrypt.new("Turing")
    assert_equal "Turing", decrypt.input
  end

  def test_it_reads_a_file
    decrypt = Decrypt.new
    result = "Turing"
    ARGV[0] = "message.txt"
    assert result, decrypt.read_file
  end

end
