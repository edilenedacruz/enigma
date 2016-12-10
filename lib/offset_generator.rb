require 'pry'
class OffsetGenerator

    def date
         today = Time.now 
         today
    end

    def to_integer
        int = today.strftime("%d%m%y").to_i
    
        int
         binding.pry
    end
end





offset = OffsetGenerator.new
offset.to_integer

# def rotation_keys
#   p a_rotation = @random_key[0..1].join.to_i
#   p b_rotation = @random_key[1..2].join.to_i
#   p c_rotation = @random_key[2..3].join.to_i
#   p d_rotation = @random_key[3..4].join.to_i
# end

