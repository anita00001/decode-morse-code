MORSECHAR = { '.-' => 'A',
              '-...' => 'B',
              '-.-.' => 'C',
              '-..' => 'D',
              '.' => 'E',
              '..-.' => 'F',
              '--.' => 'G',
              '....' => 'H',
              '..' => 'I',
              '.---' => 'J',
              '-.-' => 'K',
              '.-..' => 'L',
              '--' => 'M',
              '-.' => 'N',
              '---' => 'O',
              '.--.' => 'P',
              '--.-' => 'Q',
              '.-.' => 'R',
              '...' => 'S',
              '-' => 'T',
              '..-' => 'U',
              '...-' => 'V',
              '.--' => 'W',
              '-..-' => 'X',
              '-.--' => 'Y',
              '--..' => 'Z',
              '-----' => '0',
              '.----' => '1',
              '..---' => '2',
              '...--' => '3',
              '....-' => '4',
              '.....' => '5',
              '-....' => '6',
              '--...' => '7',
              '---..' => '8',
              '----.' => '9' }.freeze

def decode_char(morse_code)
  MORSECHAR[morse_code]
end

# puts decode_char('.-')

def decode_word(string)
  string.split.map { |morse_code| decode_char(morse_code) }.join
end

# puts decode_word("-- -.--")

def decode_message(sentence)
  sentence.split('   ').map { |word| decode_word(word) }.join(' ')
end

# puts decode_message("-- -.--   -. .- -- .")

puts decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
