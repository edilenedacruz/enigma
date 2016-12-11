require 'pry'

class CharacterMap

  def characters
   [('a'..'z').to_a + ('0'..'9').to_a, " ", ".", ",", ('A'..'Z').to_a, "!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "[", "]", "<", ">", ";", ":", "/", "?", "\\", "|"].flatten!
  end

  #def official_map
  #  official_map = characters.zip(1..85)
  #end
 
end

