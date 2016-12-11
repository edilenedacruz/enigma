require 'pry'
require_relative 'rotator' #rotations method
require_relative 'character_map' #characters method


class Encryptor
    attr_reader :input
    def initialize(input = nil)
        @input = input
    end

    # def split_message(input)
    #     @split_message = input.chars
    # end

    def encrypt_message
        final = []
       split_message = @input.chars
        split_message.each_with_index do |letter, index|
          if index % 4 == 0
        final << letter.upcase
        elsif index % 4 == 1  
        final << letter + "1" 
        elsif index % 4 == 2  
        final << letter.downcase
        elsif index % 4 == 3  
        final << letter + "Y"
        end
       end
        final
     end 

end

e = Encryptor.new("Progress")
p e.encrypt_message




# Now that we have the split message we need to to parse them individually throuhgh a method that was created to each index (index % 4 == 0 then 1, then 2, then 3).

# that method will go to our character map and rotate each character by the offset rotator total for each index [0..3]
#  then we will need to use the cypher method that will match each letter with each cyphered letter.


# e = Encryptor.new
# e.split_message("We are doing this shit!")