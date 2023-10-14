class Pangram
  NUMBER_OF_ALPHA_CHARACTERS = 26

  def self.pangram?(input : String)
    input.downcase.gsub(/[^a-z]/, "").chars.uniq.size == NUMBER_OF_ALPHA_CHARACTERS
  end
end
