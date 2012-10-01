class RsvpController < ApplicationController
  before_filter :ensure_signed_in, except: :sign_in

  def index
    @guest = current_guest
    @party = @guest.party
  end

  def update
    @guest = current_guest
    @guest.party.update_attributes params[:party]

    redirect_to :rsvp, alert: "Got it, thanks!"
  end

  def sign_in
    if session[:guest_id]
      @guest = Guest.where(id: session[:guest_id]).first

      redirect_to :rsvp if @guest
    elsif params[:first_name] and params[:last_name] and params[:zip_code]
      @guest = Guest.where(params.slice :first_name, :last_name, :zip_code).first

      if @guest
        session[:guest_id] = @guest.id

        redirect_to :rsvp
      else
        redirect_to :sign_in, alert: "You weren't found. Sorry! Please try again."
      end
    end
  end

  def sign_out
    session[:guest_id] = nil

    redirect_to :root
  end

  private

  def current_guest
    @current_guest ||= Guest.find session[:guest_id] if session[:guest_id]
  end

  def ensure_signed_in
    redirect_to :sign_in unless current_guest
  end
end
