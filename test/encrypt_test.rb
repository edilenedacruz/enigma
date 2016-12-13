require 'minitest/autorun'
require 'minitest/emoji'
require './lib/encrypt'
require 'pry'

class EncryptTest < Minitest::Test

  def test_does_encrypt_class_exist
    encrypt = Encrypt.new
    assert_instance_of Encrypt, encrypt
  end

  def 

end
#
# file object
#
# check length
#
# capture standard output
#
# out, err = capture_io do
#   fileio method
# end
#
# assert_equal "string", out
