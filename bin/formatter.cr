class Formatter
    def self.post_proccesing(file_name)
    # This function is suppose to do some post processing on the generated file
    # It will format big data set, like arrays or hashes, to be more readable
    result = File.read(file_name).split("\n").map do |x|
      if x.size > 100
        index = x.gsub(" ", "").index("=") || 0
        if (x.gsub(" ", "")[index + 1] == '{' || x.gsub(" ", "")[index + 1] == '[') && (x[-1] == ']' || x[-1] == '}')
          y = x
          count = 0
          count_2 = 1
          brackets = [] of Char
          y.each_char.with_index do |z, index|
            if ("[](){}".includes?(z.to_s)  && (brackets[-1]? != '"' || brackets[-1]?.nil? )) || '"' == z
              if "[({".includes?(z.to_s) || (brackets[-1]? != '"' && '"' == z)
                brackets << z
              else
                brackets.pop()
              end
            end
            count += 1
            if z == ',' && count > 100 && index > 1 && brackets.size == 1
              x = x.insert(index + count_2, "\n")
              count = 0
              count_2 += 1
            end
          end
        end
      end
      x
    end
    result.join("\n")
  end
end
