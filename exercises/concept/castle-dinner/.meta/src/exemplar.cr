class CastleDinner
  def self.check_food?(food)
    food == "Mushroom pasties" ? food : nil
  end

  def self.check_drink?(drink)
    return drink if drink.downcase.includes?("i")
    nil
  end

  def self.replace_drink(drink)
    check_drink?(drink) || "Apple juice"
  end
end
