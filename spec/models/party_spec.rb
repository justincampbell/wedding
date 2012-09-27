require 'spec_helper'

describe Party do
  subject { party }

  let(:party) { Party.new last_name: last_name, zip_code: zip_code }
  let(:last_name) { "Doe" }
  let(:zip_code) { 12345 }
 
  its(:name) { should == "Doe" }

  describe "#members" do
    subject(:members) { party.members }

    before :each do
      create_guests [
        "Someone Else 54321",
        "John Doe 12345",
        "Jane Doe 12345"
      ]
    end

    context "when no guests match" do
      let(:last_name) { "Nobody" }
      let(:zip_code) { 00000 }

      it { should be_empty }
    end

    context "with 1 guest matching" do
      let(:last_name) { "Else" }
      let(:zip_code) { 54321 }

      it { should =~ Guest.first(1) }
    end

    context "with 2 guests matching" do
      let(:last_name) { "Doe" }
      let(:zip_code) { 12345 }

      it { should =~ Guest.last(2) }
    end
  end
end

def create_guest(guest)
  first_name, last_name, zip_code = guest.split

  Fabricate :guest,
    first_name: first_name,
    last_name: last_name,
    zip_code: zip_code
end

def create_guests(guests)
  guests.each { |guest| create_guest guest }
end
