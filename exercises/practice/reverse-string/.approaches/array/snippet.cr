def self.reverse(input : String) : String
  result = [] of Char
  input.each_char do |char|
    result.unshift(char)
  end
  result.join
end
