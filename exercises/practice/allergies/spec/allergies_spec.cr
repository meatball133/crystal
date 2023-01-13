require "spec"
require "../src/*"

describe "Allergies" do
  it "not allergic to anything" do
    item = "eggs"
    score = 0
    Allergies.allergic_to(item, score).should eq(false)
  end

  pending "allergic only to eggs" do
    item = "eggs"
    score = 1
    Allergies.allergic_to(item, score).should eq(true)
  end

  pending "allergic to eggs and something else" do
    item = "eggs"
    score = 3
    Allergies.allergic_to(item, score).should eq(true)
  end

  pending "allergic to something, but not eggs" do
    item = "eggs"
    score = 2
    Allergies.allergic_to(item, score).should eq(false)
  end

  pending "allergic to everything" do
    item = "eggs"
    score = 255
    Allergies.allergic_to(item, score).should eq(true)
  end

  pending "not allergic to anything" do
    item = "peanuts"
    score = 0
    Allergies.allergic_to(item, score).should eq(false)
  end

  pending "allergic only to peanuts" do
    item = "peanuts"
    score = 2
    Allergies.allergic_to(item, score).should eq(true)
  end

  pending "allergic to peanuts and something else" do
    item = "peanuts"
    score = 7
    Allergies.allergic_to(item, score).should eq(true)
  end

  pending "allergic to something, but not peanuts" do
    item = "peanuts"
    score = 5
    Allergies.allergic_to(item, score).should eq(false)
  end

  pending "allergic to everything" do
    item = "peanuts"
    score = 255
    Allergies.allergic_to(item, score).should eq(true)
  end

  pending "not allergic to anything" do
    item = "shellfish"
    score = 0
    Allergies.allergic_to(item, score).should eq(false)
  end

  pending "allergic only to shellfish" do
    item = "shellfish"
    score = 4
    Allergies.allergic_to(item, score).should eq(true)
  end

  pending "allergic to shellfish and something else" do
    item = "shellfish"
    score = 14
    Allergies.allergic_to(item, score).should eq(true)
  end

  pending "allergic to something, but not shellfish" do
    item = "shellfish"
    score = 10
    Allergies.allergic_to(item, score).should eq(false)
  end

  pending "allergic to everything" do
    item = "shellfish"
    score = 255
    Allergies.allergic_to(item, score).should eq(true)
  end

  pending "not allergic to anything" do
    item = "strawberries"
    score = 0
    Allergies.allergic_to(item, score).should eq(false)
  end

  pending "allergic only to strawberries" do
    item = "strawberries"
    score = 8
    Allergies.allergic_to(item, score).should eq(true)
  end

  pending "allergic to strawberries and something else" do
    item = "strawberries"
    score = 28
    Allergies.allergic_to(item, score).should eq(true)
  end

  pending "allergic to something, but not strawberries" do
    item = "strawberries"
    score = 20
    Allergies.allergic_to(item, score).should eq(false)
  end

  pending "allergic to everything" do
    item = "strawberries"
    score = 255
    Allergies.allergic_to(item, score).should eq(true)
  end

  pending "not allergic to anything" do
    item = "tomatoes"
    score = 0
    Allergies.allergic_to(item, score).should eq(false)
  end

  pending "allergic only to tomatoes" do
    item = "tomatoes"
    score = 16
    Allergies.allergic_to(item, score).should eq(true)
  end

  pending "allergic to tomatoes and something else" do
    item = "tomatoes"
    score = 56
    Allergies.allergic_to(item, score).should eq(true)
  end

  pending "allergic to something, but not tomatoes" do
    item = "tomatoes"
    score = 40
    Allergies.allergic_to(item, score).should eq(false)
  end

  pending "allergic to everything" do
    item = "tomatoes"
    score = 255
    Allergies.allergic_to(item, score).should eq(true)
  end

  pending "not allergic to anything" do
    item = "chocolate"
    score = 0
    Allergies.allergic_to(item, score).should eq(false)
  end

  pending "allergic only to chocolate" do
    item = "chocolate"
    score = 32
    Allergies.allergic_to(item, score).should eq(true)
  end

  pending "allergic to chocolate and something else" do
    item = "chocolate"
    score = 112
    Allergies.allergic_to(item, score).should eq(true)
  end

  pending "allergic to something, but not chocolate" do
    item = "chocolate"
    score = 80
    Allergies.allergic_to(item, score).should eq(false)
  end

  pending "allergic to everything" do
    item = "chocolate"
    score = 255
    Allergies.allergic_to(item, score).should eq(true)
  end

  pending "not allergic to anything" do
    item = "pollen"
    score = 0
    Allergies.allergic_to(item, score).should eq(false)
  end

  pending "allergic only to pollen" do
    item = "pollen"
    score = 64
    Allergies.allergic_to(item, score).should eq(true)
  end

  pending "allergic to pollen and something else" do
    item = "pollen"
    score = 224
    Allergies.allergic_to(item, score).should eq(true)
  end

  pending "allergic to something, but not pollen" do
    item = "pollen"
    score = 160
    Allergies.allergic_to(item, score).should eq(false)
  end

  pending "allergic to everything" do
    item = "pollen"
    score = 255
    Allergies.allergic_to(item, score).should eq(true)
  end

  pending "not allergic to anything" do
    item = "cats"
    score = 0
    Allergies.allergic_to(item, score).should eq(false)
  end

  pending "allergic only to cats" do
    item = "cats"
    score = 128
    Allergies.allergic_to(item, score).should eq(true)
  end

  pending "allergic to cats and something else" do
    item = "cats"
    score = 192
    Allergies.allergic_to(item, score).should eq(true)
  end

  pending "allergic to something, but not cats" do
    item = "cats"
    score = 64
    Allergies.allergic_to(item, score).should eq(false)
  end

  pending "allergic to everything" do
    item = "cats"
    score = 255
    Allergies.allergic_to(item, score).should eq(true)
  end

  pending "no allergies" do
    score = 0
    expected = [] of String
    Allergies.list(score).should eq(expected)
  end

  pending "just eggs" do
    score = 1
    expected = ["eggs"] of String
    Allergies.list(score).should eq(expected)
  end

  pending "just peanuts" do
    score = 2
    expected = ["peanuts"] of String
    Allergies.list(score).should eq(expected)
  end

  pending "just strawberries" do
    score = 8
    expected = ["strawberries"] of String
    Allergies.list(score).should eq(expected)
  end

  pending "eggs and peanuts" do
    score = 3
    expected = ["eggs", "peanuts"] of String
    Allergies.list(score).should eq(expected)
  end

  pending "more than eggs but not peanuts" do
    score = 5
    expected = ["eggs", "shellfish"] of String
    Allergies.list(score).should eq(expected)
  end

  pending "lots of stuff" do
    score = 248
    expected = ["strawberries", "tomatoes", "chocolate", "pollen", "cats"] of String
    Allergies.list(score).should eq(expected)
  end

  pending "everything" do
    score = 255
    expected = ["eggs", "peanuts", "shellfish", "strawberries", "tomatoes", "chocolate", "pollen", "cats"] of String
    Allergies.list(score).should eq(expected)
  end

  pending "no allergen score parts" do
    score = 509
    expected = ["eggs", "shellfish", "strawberries", "tomatoes", "chocolate", "pollen", "cats"] of String
    Allergies.list(score).should eq(expected)
  end

  pending "no allergen score parts without highest valid score" do
    score = 257
    expected = ["eggs"] of String
    Allergies.list(score).should eq(expected)
  end
end
