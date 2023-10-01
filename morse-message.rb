class MorseCode
    MORSE_CODE = {
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
end
    message = '.-'

    decoder = MorseCode.new
    decoded_message = decoder.decode_char(message)

    puts decoded_message