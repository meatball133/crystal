require "../src/*"
require "spec"

describe "SpellboundSteel" do
  describe "find_card?" do
    it "should return the first warriors index" do
      deck = ["warrior", "mage", "warrior"]
      SpellboundSteel.find_card?(deck, "warrior").should eq(0)
    end
  end

  
end
