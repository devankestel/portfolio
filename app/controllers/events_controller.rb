class EventsController < ApplicationController
  

  def index
    
      @events = Event.all
      render json: @events
  end

  def create
    #respond_with Event.create(params[:event])
  end

  # def new
  #   @event = Event.new
  # end
  # def create
  #   @event = Event.create(event_params)
  #   redirect_to event_path(@event)
  # end
  # def show
  #   @event = Event.find(params[:id])
  # end
  # def index
  #   @events = Event.all
  # end
  # def event_params
  #   params.require(:event).permit(:title, :description, :id, :image, :start_year, :end_year, :category)
  # end
end
