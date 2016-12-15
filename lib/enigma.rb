require 'pry'
require_relative 'encryptor'
require_relative 'decryptor'
require_relative 'crack'

class Enigma
  attr_reader :my_message
  def initialize(my_message = nil)
    @my_message = my_message
  end

  def encrypt(my_message, key = nil)
    encryptor = Encryptor.new(my_message, key)
    encryptor.encrypted_message(my_message)
  end

  def decrypt(my_message, key = nil, date = nil)
    decryptor = Decryptor.new(my_message, key, date)
    decryptor.decrypted_message(my_message)
  end

  def crack(my_message, date)
    crack = Cracker.new(my_message, date)
    crack.crack(my_message)
  end

end
