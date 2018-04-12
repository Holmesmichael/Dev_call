class EventsController < ApplicationController
    before_action :find_event, only: [:show, :edit, :update, :destroy]

    def index
    end

    def show
    end

    def new
        @event = Event.new
    end

    def create
        @event = Event.new(event_params)

        if @event.save
            redirect_to @event, notice: "Great! The event was posted!"
        else
            render 'new'
        end
    end

    private

    def event_params
        params.require(:event).permit(:title, :description)
    end

    def find_event
        @event = Event.find(params[:id])
    end
end
