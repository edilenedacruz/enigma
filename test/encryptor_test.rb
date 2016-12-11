require 'minitest/autorun'
require 'minitest/pride'
require './lib/encryptor'
require 'pry'

class EncryptorTest < Minitest::Test

    def test_does_encryptor_exist
        encryptor = Encryptor.new
        assert_instance_of Encryptor, encryptor
    end

    def test_does_encryptor_receive_message
        encryptor = Encryptor.new("Turing")
        assert_equal "Turing", encryptor.input
    end

    def test_does_message_break_down_into_single_characters
        encryptor = Encryptor.new("Turing")
        assert_equal ["T", "u", "r", "i", "n", "g"], encryptor.split_message("Turing")    
    end

    def test_it_can_encrypt_message
        encryptor = Encryptor.new()
        assert_equal [], encryptor.encrypt_message
    end

end 


