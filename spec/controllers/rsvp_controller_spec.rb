require 'spec_helper'

describe RsvpController do
  let(:guest) { Fabricate :guest }

  describe "#sign_in GET" do
    context "when not signed in" do
      before :each do
        get :sign_in
      end

      it { response.should be_success }
    end

    context "when already signed in" do
      before :each do
        session[:guest_id] = guest.id
        get :sign_in
      end

      it { should redirect_to(:rsvp) }
    end

    context "with an invalid session" do
      before :each do
        session[:guest_id] = 12345
        get :sign_in
      end

      it { response.should be_success }
    end
  end

  describe "#sign_in POST" do
    let(:last_name) { nil }
    let(:zip_code) { nil }

    before :each do
      post :sign_in,
        last_name: last_name,
        zip_code: zip_code
    end

    it { flash[:alert].should be_nil }

    context "when signing in with a valid guest" do
      let(:last_name) { guest.last_name }
      let(:zip_code) { guest.zip_code }

      it { should redirect_to(:rsvp) }
    end
  end
end
