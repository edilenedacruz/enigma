require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/enigma'

class EnigmaTest < Minitest::Test

  def test_class_exists
    e = Enigma.new
    assert_instance_of Enigma, e
  end

  def test_it_can_access_input
    e = Enigma.new("Sushi!")
    assert_equal "Sushi!", e.my_message
  end

  def test_it_can_encrypt_message_when_key_is_provided
    e = Enigma.new
    e.encrypt("Sushi!", 91203)
    expected = "!0xnq&"
    assert_equal "!0xnq&", e.encrypt("Sushi!")
  end

  def test_it_can_decrypt_when_key_and_date_are_provided
    e = Enigma.new
    e.decrypt("*,Eqx'", 91203, 141216)
    assert_equal "Sushi!", e.decrypt("*,Eqx'", 91203, 141216)
  end

  def test_it_can_decrypt_when_date_is_not_provided
    e = Enigma.new
    e.decrypt("#6FGAwF)MQXn2vXH", 91203)
    assert_equal "Not yet! ..end..", e.decrypt("#6FGAwF)MQXn2vXH", 91203)
  end

  def test_it_can_crack_message_if_key_is_unknown_bu_date_is_known
    e = Enigma.new
    e.crack("#6FGAwF)MQXn2vXH", 141216)
    assert_equal "Not yet! ..end..", e.crack("#6FGAwF)MQXn2vXH", 141216)
  end

  def test_it_can_crack_without_date_input
    e = Enigma.new
    e.crack("#6FGAwF)MQXn2vXH")
    assert_equal "Not yet! ..end..", e.crack("Not yet! ..end..")
  end

end
