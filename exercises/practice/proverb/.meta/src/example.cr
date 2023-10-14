module Proverb
  extend self

  def recite(strings : Array(String)) : Array(String)
    proverb = [] of String
    unless strings.empty?
      strings.each_cons(2) do |h|
        proverb << "For want of a #{h[0]} the #{h[1]} was lost."
      end
      proverb << "And all for the want of a #{strings[0]}."
    end
    proverb
  end
end
