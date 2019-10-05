class EventsController < ApplicationController

  def new
    @event = Event.new
  end

  def create
    
  end

  def event_params
    params.require(:event).permit(:name, :date, :category, :description, :shared, employee_ids: [])
  end
end
