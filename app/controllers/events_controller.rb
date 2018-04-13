class EventsController < ApplicationController
    before_action :find_event, only: [:show, :edit, :update, :destroy, :upvote]
    before_action :authenticate_user!, except: [:index, :show]

    def index
        @events = Event.all.order("created_at DESC")
    end

    def show
    end

    def new
        @event = current_user.events.build
    end

    def create
        @event = current_user.events.build(event_params)

        if @event.save
            redirect_to @event, notice: "Great! The event was posted!"
        else
            render 'new'
        end
    end

    def edit 
    end

    def update 
        if @event.update(event_params)
            redirect_to @event, notice: "Congrats, Event was updated!"
        else
            render 'edit'
        end
    end

    def destroy 
        @event.destroy
        redirect_to root_path
    end

    def upvote  
        @event.upvote_by current_user
        redirect_to @event
    end

    private

    def event_params
        params.require(:event).permit(:title, :description)
    end

    def find_event
        @event = Event.find(params[:id])
    end
end
