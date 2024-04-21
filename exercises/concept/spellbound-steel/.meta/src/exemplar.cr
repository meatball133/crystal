module SpellboundSteel
  def self.find_card?(cards, card)
    cards.index(card)
  end

  def self.capitalize_names(characters)
    characters.map do |character|
      character.capitalize
    end
  end

  private def self.power_level(card)
    case card
    when "Warrior"
      10
    when "Mage"
      20
    when "Rogue"
      30
    when "Fireball"
      15
    when "Ice Storm"
      25
    when "Lightning Bolt"
      35
    else 
      0
    end
  end

  def self.calculate_power_level(cards)
    cards.sum do |card|
      power_level(card)
    end
  end

  def self.sort_cards_by_power_level(characters)
    characters.sort_by do |character|
      power_level(character)
    end.reverse
  end

  def self.decode_characters(character)
    result = ""
    character.each_char_with_index do |char, index|
      if index.even?
        result += char
      end
    end
    result
  end
end
