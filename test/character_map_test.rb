require 'simplecov'
SimpleCov.start
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

  def test_it_has_85_characters
    map = CharacterMap.new
    assert_equal 84, map.characters.count
  end

  def test_official_map_is_an_array
   map = CharacterMap.new
   assert_equal Array, map.characters.class
  end

end
