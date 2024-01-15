require "benchmark"

module YearDivisibleBy
  def self.leap?(year : Number) : Bool
    year.divisible_by?(4) && (year.divisible_by?(400) || !year.divisible_by?(100))
  end
end

module YearModulus
  def self.leap?(year : Number) : Bool
    year % 4 == 0 && (year % 400 == 0 || year % 100 != 0)
  end
end

module YearProc
  RULES = [
    p_divisible_by?(4),
    p_or(
      p_negate(p_divisible_by?(100)),
      p_divisible_by?(400)),
  ]

  def self.leap?(year) : Bool
    RULES.map(&.call(year)).all?
  end

  def self.p_divisible_by?(num : Int32) : Proc(Int32, Bool)
    ->(year : Int32) { year.divisible_by?(num) }
  end

  def self.p_negate(test : Proc(A, Bool)) : Proc(A, Bool) forall A
    ->(input : A) { !test.call(input) }
  end

  def self.p_or(a : Proc(A, Bool), b : Proc(A, Bool)) : Proc(A, Bool) forall A
    ->(input : A) { a.call(input) || b.call(input) }
  end
end

puts "YearModulus"
puts Benchmark.measure {
  YearModulus.leap?(2014)
}

puts "YearDivisibleBy"
puts Benchmark.measure {
  YearDivisibleBy.leap?(2014)
}

puts "YearProc"
puts Benchmark.measure {
  YearProc.leap?(2014)
}

