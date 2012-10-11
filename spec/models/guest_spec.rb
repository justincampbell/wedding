require 'spec_helper'

describe Guest do
  describe ".for_login" do
    subject(:for_login) { Guest.for_login params }

    let(:guest) { Fabricate :guest }
    let(:params) { guest.attributes.slice *Guest::SEARCH_ATTRIBUTES }

    before(:each) { guest }

    it { should == guest }

    context "with lowercase input" do
      let(:params) {
        attributes = guest.attributes.slice *Guest::SEARCH_ATTRIBUTES
        attributes.reduce({}) { |hash, (key, value)| hash.merge key => value.downcase }
      }

      it { should == guest }
    end

    context "with a nickname" do
      let(:guest) { Fabricate :guest, first_name: "Johnathon" }

      before :each do
        params['first_name'] = "john"
      end

      it { should == guest }
    end
  end
end
