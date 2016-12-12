require_relative 'key_generator'
require_relative 'offset_generator'
require 'pry'

class Rotator
  attr_reader :offset, :key

  def initialize
   @key = KeyGenerator.new.random_key
   @offset = OffsetGenerator.new.last_four
  end

  def rotations
    rotations = [(key[0..1].to_i + offset[0].to_i), (key[1..2].to_i + offset[1].to_i), (key[2..3].to_i + offset[2].to_i), (key[3..4].to_i + offset[3].to_i)]
  end


end
