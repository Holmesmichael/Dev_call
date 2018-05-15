class AnswersController < ApplicationController

    def create
        @event      = Event.find(params[:event_id])
        @rsvp       = @event.rsvps.build(rsvps_params)
        @rsvp.user  = current_user
        @rsvp.save  

        redirect_to events_url

    end

    def destroy
        @event = Event.find(params[:event_id])
        @rsvp = @event.rsvps.find(params[:id]).destroy
        redirect_to events_url
    end

    private

        def rsvps_params
            params.require(:rsvp).permit(:content)
        end

end