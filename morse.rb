def decode_char(morseChar)
    morse_hash = {
        "a" => ".-","b" => "-...","c" => "-.-.","d" => "-..","e" => ".","f" => "..-.","g" => "--.","h" => "....","i" => "..","j" => ".---","k" => "-.-","l" => ".-..","m" => "--","n" => "-.","o" => "---","p" => ".--.","q" => "--.-","r" => ".-.","s" => "...","t" => "-","u" => "..-","v" => "...-","w" => ".--","x" => "-..-","y" => "-.--","z" => "--.."," " => " ","1" => ".----","2" => "..---","3" => "...--","4" => "....-","5" => ".....","6" => "-....","7" => "--...","8" => "---..","9" => "----.","0" => "-----"
    }
    return morse_hash.key(morseChar).upcase
end

def decode_word(word)
    morseWord = ''
    word.split(" ").each do |i|
        morseWord.concat(decode_char i)
    end
    return morseWord
end

def decode(message)
    final_message = ""
    message.split("   ").each do |i|
        final_message.concat(decode_word i).concat(" ")
    end
    return final_message
end    

puts decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")