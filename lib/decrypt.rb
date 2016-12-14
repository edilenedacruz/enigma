require './lib/decryptor'

    message = File.open(ARGV[0], "r")
    input = message.read
    message.close

    decrypting = Decryptor.new(input)
    message = decrypting.decrypted_message(input)

    outgoing_message = File.open(ARGV[1], "w")
    outgoing_message.write(message)
    outgoing_message.close

puts "Created '#{ARGV[1]}' with the key #{decrypting.key} and date #{decrypting.date}"
