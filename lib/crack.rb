
require_relative 'decryptor'

class Crack
  attr_reader :input, :date, :key, :d
  def initialize(input, date)
    @input = input
    @date = date
    # @d = Decryptor.new
  end

  def crack
    # binding.pry
    99999.times do |k|
      # binding.pry
      # somehow generate key!
        d = Decryptor.new(input, key)
        cracked = d.decrypted_message(input)
        @key = k if cracked[-7..-1] == "..end.."
        return @key && cracked if cracked[-7..-1] == "..end.."
      end
  end
end

# c = Crack.new("49ztsswa5ws0.tbdqkbeqlbgqnbnrzrsrt", 121316)
# p c.crack("49ztsswa5ws0.tbdqkbeqlbgqnbnrzrsrt")
