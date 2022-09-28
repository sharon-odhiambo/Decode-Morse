def decode_character(letter)
  dictionary = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
                 '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
                 '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U',
                 '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z' }
  dictionary[letter]
end

def decode_word(word)
  word.split(/ /).map { |letter| decode_character letter }.join
end

def decode_sentence(sentence)
  sentence.split(/  /).map { |word| decode_word word }.join(' ')
end
puts(decode_sentence('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'))
