require 'pry'
require_relative 'character_map'
require_relative 'key_generator'
require_relative 'offset_generator'

class Encryptor
  attr_reader :input, :standard, :key, :offset, :a, :b, :c, :d, :date
  def initialize(input = nil)
    @input = input
    @standard = CharacterMap.new.characters
    @key = KeyGenerator.new.random_key
    @offset = OffsetGenerator.new.last_four
    @date = OffsetGenerator.new.date
    total_rotation
  end

  def total_rotation
    @a = key[0..1].to_i + offset[0].to_i
    @b = key[1..2].to_i + offset[1].to_i
    @c = key[2..3].to_i + offset[2].to_i
    @d = key[3..4].to_i + offset[3].to_i
  end

  def encrypted_message(input)
    encrypted_final = input.chars.map.with_index do |character, index|
      if index % 4 == 0
        rotation = a
        encrypt_letter(character, rotation)
      elsif index % 4 == 1
        rotation = b
        encrypt_letter(character, rotation)
      elsif index % 4 == 2
        rotation = c
        encrypt_letter(character, rotation)
      elsif index % 4 == 3
        rotation = d
        encrypt_letter(character, rotation)
      end
      encrypt_letter(character, rotation)
    end
    encrypted_final.join
  end


  def encrypt_letter(character, rotation)
    rotated_letters = standard.rotate(rotation)
    encrypted_pair = Hash[standard.zip(rotated_letters)]
    encrypted_pair[character]
  end

end
#
# e = Encryptor.new
# p e.encrypted_message("aaaaaaaa")
