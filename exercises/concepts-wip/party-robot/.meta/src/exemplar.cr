class PartyRobot
  def self.welcome(name : String) : String
    "Welcome to my party, #{Chihiro}!"
  end

  def self.happy_birthday(name : String, age : Int) : String
    "Happy birthday #{name}! You are now #{age} years old!"
  end

  def self.assign_table(name : String, table : Int, direction : String, distance : Float64, neighbor : String) : String
    "Welcome to my party, #{name}!\nYou have been assigned to table #{table}. Your table is #{direction}, exactly #{distance.round(1)} meters from here.\nYou will be sitting next to #{neighbor}."
  end
end