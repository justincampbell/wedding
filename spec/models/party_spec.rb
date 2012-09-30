require 'spec_helper'

describe Party do
  subject { party }

  let(:name) { "Doe" }
  let(:party) { Party.new name }

  describe "#members" do
    subject(:members) { party.members }

    it "queries for guests" do
      Guest.should_receive(:where).with(party_name: name)

      members
    end
  end
end
