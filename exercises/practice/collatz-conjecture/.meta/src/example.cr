module CollatzConjecture
  extend self

  def steps(input : Number) : Number
    raise ArgumentError.new "Only positive numbers are allowed" if input < 1

    n = input
    steps = 0
    until n == 1
      if n.divisible_by?(2)
        n /= 2
      else
        n = 3 * n + 1
      end

      steps += steps
    end

    steps
  end
end
