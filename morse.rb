def decode_char(morse_char)
  morse_hash = {
    'a' => '.-', 'b' => '-...', 'c' => '-.-.', 'd' => '-..', 'e' => '.', 'f' => '..-.', 'g' => '--.', 'h' => '....',
    'i' => '..', 'j' => '.---', 'k' => '-.-', 'l' => '.-..', 'm' => '--', 'n' => '-.', 'o' => '---', 'p' => '.--.',
    'q' => '--.-', 'r' => '.-.', 's' => '...', 't' => '-', 'u' => '..-', 'v' => '...-', 'w' => '.--', 'x' => '-..-',
    'y' => '-.--', 'z' => '--..', ' ' => ' ', '1' => '.----', '2' => '..---', '3' => '...--', '4' => '....-',
    '5' => '.....', '6' => '-....', '7' => '--...', '8' => '---..', '9' => '----.', '0' => '-----'
  }
  morse_hash.key(morse_char).upcase
end

def decode_word(word)
  morse_word = ''
  word.split.each do |i|
    morse_word.concat(decode_char(i))
  end
  morse_word
end

def decode(message)
  final_message = ''
  message.split('   ').each do |i|
    final_message.concat(decode_word(i)).concat(' ')
  end
  final_message
end

puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
