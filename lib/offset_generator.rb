require 'pry'
class OffsetGenerator
  attr_reader :offset, :date
  def initialize
    @offset = offset
    @date = date
  end

  def date
    @date = Time.now.strftime("%d%m%y").to_i
  end

  def last_four
    squared = date ** 2
    @offset = squared.to_s.chars[-4..-1]
  end
end
