require './lib/decryptor'
require 'pry'

class Decrypt
  attr_reader :input, :decrypting
  def initialize(input = nil)
    @input = input
  end

  def read_file
    message = File.open(ARGV[0], "r")
    @input = message.read
    message.close
    message
  end

  def decrypt_message
    @decrypting = Decryptor.new(input, ARGV[2], ARGV[3])
    message = decrypting.decrypted_message(input)
    outgoing_message = File.open(ARGV[1], "w")
    outgoing_message.write(message)
    outgoing_message.close
    outgoing_message
  end

  def print_message
    puts "Created '#{ARGV[1]}' with the key #{decrypting.key} and date #{decrypting.date}"
  end
end

d = Decrypt.new
d.read_file
d.decrypt_message
d.print_message
