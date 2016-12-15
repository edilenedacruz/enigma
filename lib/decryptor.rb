require 'pry'
require_relative 'character_map'
require_relative 'offset_generator'
require_relative 'key_generator'

class Decryptor
  attr_reader :input, :standard, :key, :offset, :a, :b, :c, :d, :date
  def initialize(input = nil, key = nil, date = nil)
    @input = input
    @standard = CharacterMap.new.characters
    @key = key.to_s || KeyGenerator.new.random_key
    @offset = OffsetGenerator.new.last_four
    @date = date.to_i || OffsetGenerator.new.date.to_i
    decryption_rotation
  end

  def decryption_rotation
    @a = key[0..1].to_i + offset[0].to_i
    @b = key[1..2].to_i + offset[1].to_i
    @c = key[2..3].to_i + offset[2].to_i
    @d = key[3..4].to_i + offset[3].to_i
  end

  def decrypted_message(input)
    decrypted_final = input.chars.map.with_index do |character, index|
      case
        when index % 4 == 0 then rotation = a
        when index % 4 == 1 then rotation = b
        when index % 4 == 2 then rotation = c
        when index % 4 == 3 then rotation = d
      end
      decrypt_letter(character, rotation)
    end.join
  end

  def decrypt_letter(character, rotation)
    rotated_letters = standard.rotate(-rotation)
    dencrypted_pair = Hash[standard.zip(rotated_letters)]
    dencrypted_pair[character]
  end

end
#
# d = Decryptor.new("eu6zqxvi8t1ccnl0c3q09", 68861, 141216)
# p d.decrypted_message("eu6zqxvi8t1ccnl0c3q09")
# p d.key
# p d.date

#Created 'enc_msg.txt' with the key 68861 and date 141216
#eu6zqxvi8t1ccnl0c3q09
