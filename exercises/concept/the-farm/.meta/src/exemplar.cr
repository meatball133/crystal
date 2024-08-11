class InvalidCowsError < Exception
  def initialize(cows, message)
    @message = "#{cows} cows are invalid: #{message}"
  end
end

module TheFarm
  def self.divide_food(food : FodderCalculator, number_of_cows : Int32)
    begin
      fodder = food.fodder_amount!
    rescue
      return 0
    end

    begin
      factor = food.fattening_factor!
    rescue
      return 0
    end

    return fodder / number_of_cows * factor
  end

  def self.validate_input_and_divide_food(food : FodderCalculator, number_of_cows : Int32)
    if number_of_cows <= 0
      raise "Number of cows must be greater than 0"
    end

    return divide_food(food, number_of_cows)
  end

  def self.validate_number_of_cows(number_of_cows : Int32)
    if number_of_cows < 0
      raise InvalidCowsError.new(number_of_cows, "there are no negative cows")
    end

    if number_of_cows == 0
      raise InvalidCowsError.new(number_of_cows, "no cows don't need food")
    end
  end
end
