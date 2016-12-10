require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/offset_generator'

class OffsetGeneratorTest < Minitest::Test

    def test_class_exists
        offset = OffsetGenerator.new
        assert_instance_of OffsetGenerator, OffsetGenerator.new
    end

    def test_it_can_obtain_todays_date
        offset = OffsetGenerator.new
        assert_instance_of Time, offset.date
    end

    def test_date_is_a_six_digit_number
        offset = OffsetGenerator.new
        assert_equal 6, Time.now.strftime("%d%m%y").length
    end


end