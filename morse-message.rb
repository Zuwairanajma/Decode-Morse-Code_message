class MorseCode
    MORSE_CODE = {
      ' ' => ' ', # Add space without Morse code representation
      '.-' => 'A',
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
      '--..' => 'Z'
    }.freeze
  
    def decode_char(morse_char)
      MORSE_CODE[morse_char]
    end
  
    def decode_word(morse_word)
        MORSE_CODE[morse_word]
      morse_letters = morse_word.split(/ +/)
      word_decoded = ''
  
      morse_letters.each do |morse_char|
        char_decoded = decode_char(morse_char)
        word_decoded += char_decoded if char_decoded
      end
  
      word_decoded
    end
  end
  
#   message = '.-..---...-.'
message = ".-.. --- ...- ."
  decoder = MorseCode.new
  decoded_message = decoder.decode_word(message)
  
  puts "Input Morse Code: #{message}"
  puts "Decoded Message: #{decoded_message}"
  
  