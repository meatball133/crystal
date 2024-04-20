module SpellboundSteel
  def self.find_card?(cards, card)
    cards.index(card)
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
    end
  end

  def self.decode_characters(characters)
    character.each_char_with_index.reduce("") do |acc, (char, index)|
      if index.even?
        acc += char
      end
      acc
    end
  end
end

def self.count_wizard_warriors(characters)
  characters.count do |character|
    character == "Wizard" || character == "Warrior"
  end
end