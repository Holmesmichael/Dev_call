class RsvpMail < ApplicationMailer
    def rsvp_email(user)
        @rsvp=rsvp
        mail(to: @user.email, subject: "You are now registered to the event, thank you!")
    end
end