class RsvpMailer < ActionMailer::Base
  default to: "rsvp@bethandjustin2013.com",
        from: "rsvp@bethandjustin2013.com"

  def failed_login(params)
    mail subject: "Failed login attempt (#{params['first_name']} #{params['last_name']}/#{params['zip_code']})"
  end

  def rsvp(guest)
    @guest = guest

    mail subject: "#{@guest.full_name} RSVP'd"
  end
end
