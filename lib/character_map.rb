require 'pry'

class CharacterMap
  def characters
   [('a'..'z').to_a + ('0'..'9').to_a, " ", ".", ","].flatten!
  end

end

# def characters
#  [('a'..'z').to_a + ('0'..'9').to_a, " ", ".", ",", ('A'..'Z').to_a, "!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "[", "]", "<", ">", ";", ":", "/", "?", "\\", "|"].flatten!
# end
