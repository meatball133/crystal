require "spec"
require "../src/*"

describe Rules do
  describe "eat_ghost?" do
    it "Ghost gets eaten" do
      Rules.eat_ghost?(true, true).should be_true
    end

    it "Ghost does not get eaten because no power pellet active" do
      Rules.eat_ghost?(false, true).should be_false
    end

    it "Ghost does not get eaten because not touching ghost" do
      Rules.eat_ghost?(true, false).should be_false
    end

    it "Ghost does not get eaten because no power pellet is active, even if not touching ghost" do
      Rules.eat_ghost?(false, true).should be_false
    end
  end

  describe "score?" do
    it "Score when eating dot" do
      Rules.score?(true, false).should be_true
    end

    it "Score when eating power pellet" do
      Rules.score?(false, true).should be_true
    end

    it "No score when eating nothing" do
      Rules.score?(false, false).should be_false
    end
  end

  describe "lose?" do
    it "Lose if touching a ghost without a power pellet active" do
      Rules.lose?(false, true).should be_true
    end

    it "Don't lose if touching a ghost with a power pellet active" do
      Rules.lose?(true, true).should be_false
    end

    it "No lose when touching ghost and power pellet active" do
      Rules.lose?(false, false).should be_false
    end
  end

  describe "win?" do
    it "Win if all dots eaten" do
      Rules.win?(true, false, false).should be_true
    end

    it "Don't win if all dots eaten, but touching a ghost" do
      Rules.win?(true, false, true).should be_false
    end

    it "Win if all dots eaten and touching a ghost with a power pellet active" do
      Rules.win?(true, true, true).should be_true
    end
  end
end
