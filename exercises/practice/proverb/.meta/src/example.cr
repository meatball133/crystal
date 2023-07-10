module Proverb
  extend self

  def recite(*strings : Array(String), qualifier : String = nil) : Array(String)
    proverb = [] of String
    if strings.size > 0
      strings.each_cons(2) do |h|
        proverb << "For want of a #{h[0]} the #{h[1]} was lost."
      end
      if qualifier
        proverb << "And all for the want of a #{qualifier} #{strings[0]}."
      else
        proverb << "And all for the want of a #{strings[0]}."
      end
    end
    proverb
  end
end
