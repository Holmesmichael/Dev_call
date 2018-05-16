class Rsvp_MailerController < ApplicationController
    def rsvp
        @rsvp=@event.user
        RsvpMail.rsvp_email(@user).deliver_now
    end
end