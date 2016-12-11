require_relative 'key_generator'
require_relative 'offset_generator'
require 'pry'

class Rotator
attr_reader :key_a, :key_b, :key_c, :key_d, :key

def initialize
   @key = KeyGenerator.new.random_key
end

    def key_rotations
        @key_a = key[0..1].to_i
         binding.pry
        @key_b = key[1..2].to_i
        @key_c = key[2..3].to_i
        @key_d = key[3..4].to_i
        binding.pry
    end
    binding.pry
end
