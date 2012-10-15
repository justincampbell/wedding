class RsvpMailer < ActionMailer::Base
  default to: "rsvp@bethandjustin2013.com",
        from: "rsvp@bethandjustin2013.com"

  def rsvp(guest)
    @guest = guest

    mail subject: "#{@guest.full_name} RSVP'd"
  end
end
