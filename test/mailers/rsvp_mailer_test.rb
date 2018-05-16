require 'test_helper'

class RsvpMailerTest < ActionMailer::TestCase
  test "rsvp_email" do
    mail = RsvpMailer.rsvp_email
    assert_equal "Rsvp email", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
