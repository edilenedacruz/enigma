require 'pry'
require_relative 'decryptor'
require_relative 'offset_generator'

class Cracker
  attr_reader :input, :date, :key, :d
  def initialize(input = nil, date = nil)
    @input = input
    @date = date.to_i || @date = OffsetGenerator.new.date.to_i
    @key = key
  end

  def crack(input)
    @key = 0
    cracked = ""
    until cracked[-7..-1] == "..end.." do
      d = Decryptor.new(input, @key, date)
       cracked = d.decrypted_message(input)
       @key += 1
     end
     cracked
  end
end

# c = Cracker.new("Gc#8;9u ebu%", 141216)
# p c.crack("Gc#8;9u ebu%")
