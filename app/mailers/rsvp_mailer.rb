class RsvpMailer < ApplicationMailer

  def rsvp_email
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
