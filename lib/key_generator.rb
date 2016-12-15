require 'pry'

class KeyGenerator
  attr_reader :key
  def initialize
    @key = key
  end

  def random_key
    random_key = []
    5.times do
      random_key << rand(0..9)
    end
    @key = random_key.join
  end
end
