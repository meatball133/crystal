module Proverb
  extend self

  def recite(*strings, qualifier : String | Nil = nil) : Array(String)
    p(strings)
    proverb = [] of String
    if strings.size > 0
      strings.each_cons(2) do |h|
        proverb << "For want of a #{h[0]} the #{h[1]} was lost."
      end
      unless qualifier.nil?
        if strings.size > 0
            proverb << "And all for the want of a #{qualifier} #{strings[0]}."
        end
      else
        if strings[0]?
            unless strings.nil?
          proverb << "And all for the want of a #{strings[0]}."
            end
        end
      end
    end
    proverb
  end
end
