require './lib/encryptor'

# class Encrypt
#
#   def receiver
    message = File.open(ARGV[0], "r")
    input = message.read
    message.close

    encrypting = Encryptor.new(input)
    cyphered = encrypting.encrypted_message(input)

    outgoing_message = File.open(ARGV[1], "w")
    outgoing_message.write(cyphered)
    outgoing_message.close
#
#   end
#
# end
puts "Created '#{ARGV[1]}' with the key #{encrypting.key} and date #{encrypting.date}"
