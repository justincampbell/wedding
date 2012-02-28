require 'spec_helper'

describe PagesController do
  describe "#index" do
    before :each do
      get :index
    end

    it { response.should be_success }
  end
end
