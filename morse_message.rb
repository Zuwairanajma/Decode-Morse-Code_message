class MorseCode
  MORSE_CODE = {
    ' ' => ' ', # Add space without Morse code representation
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
  }.freeze

  def decode_char(morse_char)
    MORSE_CODE[morse_char]
  end

  def decode_word(morse_word)
    morse_word.split.map { |morse_char| decode_char(morse_char) }.compact.join('')
  end

  def decode(message)
    message.split('   ').map { |morse_word| decode_word(morse_word) }.join(' ').strip
  end
end

decoder = MorseCode.new

message = '-- -.--   -. .- -- .'
decoded_message = decoder.decode(message)
puts "Input Morse Code: #{message}"
puts "Decoded Message: #{decoded_message}"

message1 = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
decoded_message1 = decoder.decode(message1)
puts "Input Morse Code: #{message1}"
puts "Decoded Message: #{decoded_message1}"
