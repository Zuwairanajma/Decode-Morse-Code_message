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
  
    def decode(message)
      morse_words = message.split('   ')
      decoded_message = ''
      morse_words.each do |morse_word|
        decoded_word = decode_word(morse_word)
        decoded_message += "#{decoded_word} " unless decoded_word.empty?
      end
      decoded_message.strip
    end
  end
  
  message = '.-.. --- ...- .'
  decoder = MorseCode.new
  decoded_message = decoder.decode(message)
  puts "Input Morse Code: #{message}"
  puts "Decoded Message: #{decoded_message}"
  
  message1 = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
  decoded_message1 = decoder.decode(message1)
  puts "Input Morse Code: #{message1}"
  puts "Decoded Message: #{decoded_message1}"
  
  
