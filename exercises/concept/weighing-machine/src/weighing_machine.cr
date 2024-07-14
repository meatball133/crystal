class WeighingMachine
  # Write your code here

  # DO NOT MODIFY ANYTHING BELOW THIS LINE
  def weigh(weight : Float64) : String
    weight = weight.round(@precision)
    weight = weight * 2.20462 unless @metric
    weight
  end
end
