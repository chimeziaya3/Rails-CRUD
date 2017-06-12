class EventsController < ApplicationController
    def index
        @events = Event.all
    end
    
    def show
        @event = Event.find(params[:id])
    end

    def new
        @event = Event.new
    end
    
    def create
        @event = Event.new(event_params)
        if @event.save
            redirect_to '/events'
        else
            render 'new'
        end
    end

    def edit
        @event = Event.find(params[:id])
    end
    
    def update
        @event = Event.find(params[:id])
        if @event.update(event_params)
            redirect_to '/events'
        else
            render 'new'
        end
    end
    
    def destroy
        @event = Event.find(params[:id])
        @event.destroy
        redirect_to '/events'
    end
    
        
    private
    # Strong Paraters (DOn't trust user input')
    def event_params
            params.require(:event).permit(:event, :start_time, :end_time)
    end
end
