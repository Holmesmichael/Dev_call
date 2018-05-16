class RsvpMail < ApplicationMailer
    default from: "from@example.com"
    
    layout "mailer"


    def rsvp_mail(user)
        @user = user
        mail(to: @user, subject: 'Thank you for your RSVP')
  
    end
    
end