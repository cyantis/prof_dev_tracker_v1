class EventsController < ApplicationController

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(event_params)

    if @event.save
      flash[:message] = "Learning Logged!"
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])
    @employee = Employee.find(params[:employee_id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    flash[:message] = "Learning Updated!"
    redirect_to event_path(@event)
  end

  def destroy
    @event = Event.find(params[:id])
    @employee = Employee.find(params[:employee_id])
    @event.destroy
    flash[:message] = "Learning Deleted!"
    redirect_to employee_path(@employee)
  end

  def event_params
    params.require(:event).permit(:name, :date, :category, :description, :shared, employee_ids: [])
  end
end
