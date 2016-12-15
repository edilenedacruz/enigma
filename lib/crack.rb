require_relative 'cracker'
require 'pry'

class Crack
  attr_reader :input, :cracking, :date
  def initialize(input = nil, date = nil)
    @date = date
    @input = input
  end

  def read_file
    message = File.open(ARGV[0], "r")
    @input = message.read
    message.close
    message
  end

  def crack_message
    @cracking = Cracker.new(input, ARGV[2])
    cracked = cracking.crack(input)
    outgoing_message = File.open(ARGV[1], "w")
    outgoing_message.write(cracked)
    outgoing_message.close
    outgoing_message
  end

  def print_message
    puts "Created '#{ARGV[1]}' with the key #{cracking.key.to_i} and date #{cracking.date}"
  end
end

# c = Crack.new
# c.read_file
# c.crack_message
# c.print_message
