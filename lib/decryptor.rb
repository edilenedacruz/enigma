require 'pry'
require_relative 'character_map'
# require_relative 'key_generator'  #we don't need it cause it's random at first then to decrypt we need the correct one
require_relative 'offset_generator'

class Decryptor
  attr_reader :input, :standard, :key, :offset, :a, :b, :c, :d, :date
  def initialize(input = nil)
    @input = input
    @standard = CharacterMap.new.characters
    # @key = KeyGenerator.new.random_key
    # @key = "75980" #keep this key for the tests!!!!! for now
    @key = "34797"
    @offset = OffsetGenerator.new.last_four
    @date = OffsetGenerator.new.date
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
      if index % 4 == 0
        rotation = a
        decrypt_letter(character, rotation)
      elsif index % 4 == 1
        rotation = b
        decrypt_letter(character, rotation)
      elsif index % 4 == 2
        rotation = c
        decrypt_letter(character, rotation)
      elsif index % 4 == 3
        rotation = d
        decrypt_letter(character, rotation)
      end
      decrypt_letter(character, rotation)
    end
    decrypted_final.join
  end


  def decrypt_letter(character, rotation)
    rotated_letters = standard.rotate(-rotation)
    dencrypted_pair = Hash[standard.zip(rotated_letters)]
    dencrypted_pair[character]
  end

end

d = Decryptor.new
p d.decrypted_message("o213clykppu vmdnaddoaedqagd")
