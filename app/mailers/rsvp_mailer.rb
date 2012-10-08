class RsvpMailer < ActionMailer::Base
  default to: "rsvp@bethandjustin2013.com",
        from: "rsvp@bethandjustin2013.com"

  def rsvp(guest, params)
    @guest = guest
    @params = params

    mail subject: "#{guest.full_name} RSVP'd"
  end
end
