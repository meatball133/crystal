class CastleDinner
  def self.check_food?(food)
    food == "Mushroom pasties" ? food : nil
  end

  def self.check_drink?(drink)
    has_i = drink.downcase.includes?("i")
    unless has_i.nil?
      return drink
    end
    nil
  end

  def self.replace_drink(drink)
    check_drink?(drink) || "Apple juice"
  end
end
