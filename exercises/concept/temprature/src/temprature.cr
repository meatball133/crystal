class Temprature
  def to_kelvin(temprature : Number) : Number
    temprature + 273.15
  end

  def to_whole_number(temprature : Number) : Number
    temprature.to_i
  end

  def to_fahrenheit(temprature : Number) : Number
    (temprature * 9 / 5) + 32
  end
end
