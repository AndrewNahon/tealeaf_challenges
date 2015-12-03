# scrabble("word") => score
#iterate through the word, match each letter to a score then add together.
LETTER_VALUES = {1 => ['a', 'e', 'i' , 'o', 'u', 'l', 'n', 'r', 's', 't'], 
                 2 => ['d', 'g'], 
                 3 => ['b', 'c', 'm', 'p'], 
                 4 => ['f', 'h', 'v', 'w', 'y'], 
                 5 => ['k'],
                 8 => ['j', 'x'],
                 10 => ['q', 'z']
               }

def scrabble(str)
  score = 0
  str = str.downcase
  str.chars.reduce(0) do |acc, char|
    acc + letter_value(char)
  end
end

def letter_value(letter)
  LETTER_VALUES.each do |k, v|
    if v.include?(letter)
      return k
    end
  end
end

puts scrabble('Cabbage')