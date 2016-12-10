require 'pry'
class OffsetGenerator
  attr_reader :offset

  def initialize
    @offset = offset
  end

    def date
      Time.now
    end

    def last_four
      squared = (date.strftime("%d%m%y").to_i) ** 2
      @offset = squared.to_s.chars[-4..-1]
    end

end
