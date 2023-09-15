class Library
  def self.first_letter(title : String) : Char
    title[0]
  end

  def self.initials(first_name : String, last_name : String) : String
    "#{first_letter(first_name)}.#{first_letter(last_name)}"
  end

  def self.decrypt_character(character : Char) : Char
    if character.uppercase?
      character = character.ord == 65 ? 'Z' : character.pred
    else
      character = character.ord == 97 ? 'z' : character.pred
    end
    character
  end

  def self.decrypt_text(text : String) : String
    i = 0
    result = ""

    while i < text.size
      if text[i].letter?
        result += decrypt_character(text[i])
      else
        result += text[i]
      end
      i += 1
    end
    result
  end
end
