class Temprature
  def to_kelvin(temprature)
    temprature + 273.15
  end

  def to_whole_number(temprature)
    temprature.to_i
  end

  def to_fahrenheit(temprature)
    (temprature * 1.8) + 32
  end

  def number_missing_sensors(number_of_sensors)
    4 - number_of_sensors % 4
  end
end
