require 'pry'
class OffsetGenerator
  attr_reader :offset, :date
  def initialize
    @offset = offset
  end

  def date
    @date = Time.now.strftime("%d%m%y")
  end

  def last_four
    squared = date.to_i ** 2
    @offset = squared.to_s.chars[-4..-1]
  end
end

# o = OffsetGenerator.new
# o.last_four
