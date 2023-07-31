module ResistorColorExpert
  Colors = {
    "black"  => 0,
    "brown"  => 1,
    "red"    => 2,
    "orange" => 3,
    "yellow" => 4,
    "green"  => 5,
    "blue"   => 6,
    "violet" => 7,
    "grey"   => 8,
    "white"  => 9,
  }

  Tolerance = {
    "brown"  => 1,
    "red"    => 2,
    "green"  => 0.5,
    "blue"   => 0.25,
    "violet" => 0.1,
    "grey"   => 0.05,
    "gold"   => 5,
    "silver" => 10,
  }

  def self.resistor_label(bands : Array(String)) : String
    return "0 ohms" if bands.size == 1
    tolerance, multiplier, value = 0, 0, 0

    if bands.size == 4
      value = 10 * Colors[bands[0]] + Colors[bands[1]]
      multiplier = 10 ** Colors[bands[2]]
      tolerance = Tolerance[bands[3]]
    elsif bands.size == 5
      value = 100 * Colors[bands[0]] + 10 * Colors[bands[1]] + Colors[bands[2]]
      multiplier = 10 ** Colors[bands[3]]
      tolerance = Tolerance[bands[4]]
    end

    value *= multiplier

    case value
    when 1000..999999
      "#{(value / 1000) % 1 == 0 ? (value / 1000).to_i : value / 1000} kiloohms ±#{tolerance}%"
    when 1000000..999999999
      "#{(value / 1000000) % 1 == 0 ? (value / 1000000).to_i : value / 1000000} megaohms ±#{tolerance}%"
    else
      "#{value} ohms ±#{tolerance}%"
    end
  end
end
