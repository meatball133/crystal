module X
    def self.remove_warriors(characters)
        characters.reduce([]) do |acc, character|
          if character[:type] != "warrior"
            acc << character
          end
          acc
        end


      
    end

    def self.count_chracters(characters)
      characters.count
      end
    end
  
end