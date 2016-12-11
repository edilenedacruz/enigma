require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/character_map'

class CharacterMapTest < Minitest::Test

  def test_character_map_exists
    map = CharacterMap.new
    assert_instance_of CharacterMap, map
  end

  def test_it_is_not_empty
    map = CharacterMap.new
    assert_equal false, map.characters.nil?
  end
end
