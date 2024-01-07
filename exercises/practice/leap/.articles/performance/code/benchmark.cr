require "benchmark"

module YearDivisableBy
  def self.leap?(year : Number) : Bool
    year.divisible_by?(4) && (year.divisible_by?(400) || !year.divisible_by?(100))
  end
end

module YearMoldulo
  def self.leap?(year : Number) : Bool
    year % 4 == 0 && (year % 400 == 0 || year % 100 != 0)
  end
end

puts "YearMoldulo"
puts Benchmark.measure {
  YearMoldulo.leap?(2014)
}

puts "YearDivisableBy"
puts Benchmark.measure {
  YearDivisableBy.leap?(2014)
}

