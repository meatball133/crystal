require "spec"
require "../src/*"

describe "Allergies" do
  it "testing for eggs allergy" do
    Allergies.allergic_to("eggs", 0).should eq(false)
  end

  pending "testing for eggs allergy" do
    Allergies.allergic_to("eggs", 1).should eq(true)
  end

  pending "testing for eggs allergy" do
    Allergies.allergic_to("eggs", 3).should eq(true)
  end

  pending "testing for eggs allergy" do
    Allergies.allergic_to("eggs", 2).should eq(false)
  end

  pending "testing for eggs allergy" do
    Allergies.allergic_to("eggs", 255).should eq(true)
  end

  pending "testing for peanuts allergy" do
    Allergies.allergic_to("peanuts", 0).should eq(false)
  end

  pending "testing for peanuts allergy" do
    Allergies.allergic_to("peanuts", 2).should eq(true)
  end

  pending "testing for peanuts allergy" do
    Allergies.allergic_to("peanuts", 7).should eq(true)
  end

  pending "testing for peanuts allergy" do
    Allergies.allergic_to("peanuts", 5).should eq(false)
  end

  pending "testing for peanuts allergy" do
    Allergies.allergic_to("peanuts", 255).should eq(true)
  end

  pending "testing for shellfish allergy" do
    Allergies.allergic_to("shellfish", 0).should eq(false)
  end

  pending "testing for shellfish allergy" do
    Allergies.allergic_to("shellfish", 4).should eq(true)
  end

  pending "testing for shellfish allergy" do
    Allergies.allergic_to("shellfish", 14).should eq(true)
  end

  pending "testing for shellfish allergy" do
    Allergies.allergic_to("shellfish", 10).should eq(false)
  end

  pending "testing for shellfish allergy" do
    Allergies.allergic_to("shellfish", 255).should eq(true)
  end

  pending "testing for strawberries allergy" do
    Allergies.allergic_to("strawberries", 0).should eq(false)
  end

  pending "testing for strawberries allergy" do
    Allergies.allergic_to("strawberries", 8).should eq(true)
  end

  pending "testing for strawberries allergy" do
    Allergies.allergic_to("strawberries", 28).should eq(true)
  end

  pending "testing for strawberries allergy" do
    Allergies.allergic_to("strawberries", 20).should eq(false)
  end

  pending "testing for strawberries allergy" do
    Allergies.allergic_to("strawberries", 255).should eq(true)
  end

  pending "testing for tomatoes allergy" do
    Allergies.allergic_to("tomatoes", 0).should eq(false)
  end

  pending "testing for tomatoes allergy" do
    Allergies.allergic_to("tomatoes", 16).should eq(true)
  end

  pending "testing for tomatoes allergy" do
    Allergies.allergic_to("tomatoes", 56).should eq(true)
  end

  pending "testing for tomatoes allergy" do
    Allergies.allergic_to("tomatoes", 40).should eq(false)
  end

  pending "testing for tomatoes allergy" do
    Allergies.allergic_to("tomatoes", 255).should eq(true)
  end

  pending "testing for chocolate allergy" do
    Allergies.allergic_to("chocolate", 0).should eq(false)
  end

  pending "testing for chocolate allergy" do
    Allergies.allergic_to("chocolate", 32).should eq(true)
  end

  pending "testing for chocolate allergy" do
    Allergies.allergic_to("chocolate", 112).should eq(true)
  end

  pending "testing for chocolate allergy" do
    Allergies.allergic_to("chocolate", 80).should eq(false)
  end

  pending "testing for chocolate allergy" do
    Allergies.allergic_to("chocolate", 255).should eq(true)
  end

  pending "testing for pollen allergy" do
    Allergies.allergic_to("pollen", 0).should eq(false)
  end

  pending "testing for pollen allergy" do
    Allergies.allergic_to("pollen", 64).should eq(true)
  end

  pending "testing for pollen allergy" do
    Allergies.allergic_to("pollen", 224).should eq(true)
  end

  pending "testing for pollen allergy" do
    Allergies.allergic_to("pollen", 160).should eq(false)
  end

  pending "testing for pollen allergy" do
    Allergies.allergic_to("pollen", 255).should eq(true)
  end

  pending "testing for cats allergy" do
    Allergies.allergic_to("cats", 0).should eq(false)
  end

  pending "testing for cats allergy" do
    Allergies.allergic_to("cats", 128).should eq(true)
  end

  pending "testing for cats allergy" do
    Allergies.allergic_to("cats", 192).should eq(true)
  end

  pending "testing for cats allergy" do
    Allergies.allergic_to("cats", 64).should eq(false)
  end

  pending "testing for cats allergy" do
    Allergies.allergic_to("cats", 255).should eq(true)
  end

  pending "list when:" do
    Allergies.list(0).should eq([] of String)
  end

  pending "list when:" do
    Allergies.list(1).should eq(["eggs"] of String)
  end

  pending "list when:" do
    Allergies.list(2).should eq(["peanuts"] of String)
  end

  pending "list when:" do
    Allergies.list(8).should eq(["strawberries"] of String)
  end

  pending "list when:" do
    Allergies.list(3).should eq(["eggs", "peanuts"] of String)
  end

  pending "list when:" do
    Allergies.list(5).should eq(["eggs", "shellfish"] of String)
  end

  pending "list when:" do
    Allergies.list(248).should eq(["strawberries", "tomatoes", "chocolate", "pollen", "cats"] of String)
  end

  pending "list when:" do
    Allergies.list(255).should eq(["eggs", "peanuts", "shellfish", "strawberries", "tomatoes", "chocolate", "pollen", "cats"] of String)
  end

  pending "list when:" do
    Allergies.list(509).should eq(["eggs", "shellfish", "strawberries", "tomatoes", "chocolate", "pollen", "cats"] of String)
  end

  pending "list when:" do
    Allergies.list(257).should eq(["eggs"] of String)
  end
end
