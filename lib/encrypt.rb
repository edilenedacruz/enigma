require './lib/encryptor'
require 'pry'

class Encrypt
  attr_reader :input, :encrypting
  def initialize(input = nil)
    @input = input
  end

  def read_file
    message = File.open(ARGV[0], "r")
    @input = message.read
    message.close
    message
  end

  def encrypt_message
    @encrypting = Encryptor.new(input)
    cyphered = encrypting.encrypted_message(input)
    outgoing_message = File.open(ARGV[1], "w")
    outgoing_message.write(cyphered)
    outgoing_message.close
    outgoing_message
  end

  def print_message
    puts "Created '#{ARGV[1]}' with the key #{encrypting.key.to_i} and date #{encrypting.date}"
  end
end

# e = Encrypt.new
# e.read_file
# e.encrypt_message
# e.print_message
