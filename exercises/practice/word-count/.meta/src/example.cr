module WordCount
  def self.count_words(sentence : String) : Hash(String, Int32)
    result = Hash(String, Int32).new
    sentence.split(/[\t, \s, \n,]+/).each do |word|
      word = word.downcase.gsub(/[^\w\s']/, "").gsub(/^\'+|\'+$/, "")
      next if word.empty?
      result[word] = result.has_key?(word) ? result[word] + 1 : 1
    end
    result
  end
end
