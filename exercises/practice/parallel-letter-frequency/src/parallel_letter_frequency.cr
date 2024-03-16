module ParallelLetterFrequency
  def self.calculate(texts)
    p texts
    result = {} of Char => Int32
    texts.each do |text|
        text.each_char do |char|
          if char.letter?
            char = char.downcase
            result[char] ||= 0
            result[char] += 1
          end
        end
      end

    end
    result
  end
end


p ParallelLetterFrequency.calculate(["a", "b", "a"])
