require 'pry'
require_relative 'decryptor'
require_relative 'offset_generator'

class Cracker
  attr_reader :input, :date, :key, :d
  def initialize(input = nil, date = nil)
    @input = input
    @date = date.to_i || OffsetGenerator.new.date.to_i
    @key = key
  end

#   def crack(input)
#     99999.times do |key|
#       #binding.pry
#       key = key.to_s.rjust(5, "0")
#       d = Decryptor.new(input, key, date)
#       cracked = d.decrypted_message(input)
#       return [cracked, key] if cracked[-7..-1] == "..end.."
#     end
#   end
# end
  def crack(input)
    @key = 0
    cracked = ""
    until cracked[-7..-1] == "..end.." do
      # binding.pry
      d = Decryptor.new(input, @key, date)
       cracked = d.decrypted_message(input)
       @key += 1
     end
     cracked
  end
end

# c = Cracker.new("Gc#8;9u ebu%", 141216)
# p c.crack("Gc#8;9u ebu%")
