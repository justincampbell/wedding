require 'spec_helper'

describe Guest do
  subject(:guest) { Fabricate :guest }

  describe "#party" do
    it "returns a party with this guest" do
      guest.party.should be_a Party
    end
  end
end
