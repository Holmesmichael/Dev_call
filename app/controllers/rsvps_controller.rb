class RsvpsController < ApplicationController

    def create
        @rsvps = current_user.rsvps.build({event_id: params[:id]})
       if @rsvps.save
         RsvpMail.rsvp_mail(@user).deliver_now
         flash[:notice] = "You have RSVP'd to this event!"
         redirect_to event_path
       end
    end

    def rsvps
        @rsvps = rsvps.new
    end
  


end