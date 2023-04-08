require "spec"
require "../src/*"

describe Moviegoer do
  describe "ticket_price" do
    it "Person under 59 should return 15" do
      Moviegoer.new(59).ticket_price.should eq 15
    end

    it "Person over 60 should return 10" do
      Moviegoer.new(60).ticket_price.should eq 10
    end
  end

  describe "watch_scary_movie?" do
    it "Person under 18 should return false" do
      Moviegoer.new(17).watch_scary_movie?.should be_false
    end

    it "Person over 18 should return true" do
      Moviegoer.new(18).watch_scary_movie?.should be_true
    end
  end

  describe "claim_free_popcorn" do
    it "Members should get popcorn 🍿" do
      Moviegoer.new(17, true).claim_free_popcorn.should eq "🍿"
    end

    it "Non members should get \"none\"" do
      Moviegoer.new(17, false).claim_free_popcorn.should eq "none"
    end
  end
end
