# Preview all emails at http://localhost:3000/rails/mailers/rsvp_mailer
class RsvpMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/rsvp_mailer/rsvp_email
  def rsvp_email
    RsvpMailer.rsvp_email
  end

end
