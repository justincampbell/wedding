require 'spec_helper'

describe Guest do
  subject { guest }

  let(:guest) { Fabricate :guest }

  its(:full_name) { should == "John Doe" }

  describe "#party" do
    subject { party }

    let(:party) { guest.party }

    it { should be_a Party }

    it "returns a party for this guest" do
      party.members.should include(guest)
    end
  end

  describe "#party_name" do
    let(:guest) { Fabricate :guest, party_name: nil }

    it "defaults to #last_name" do
      guest.party_name.should == guest.last_name
    end
  end
end
