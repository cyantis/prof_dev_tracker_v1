class EventsController < ApplicationController

  def event_params
    params.require(:event).permit(:name, :date, :category, :description, :shared, employee_ids: [])
  end
end
