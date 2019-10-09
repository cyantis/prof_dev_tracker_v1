module EventsHelper

  def event_category_arr
    Event.event_order.collect {|e| e.category }
  end

  def current_user
    Employee.find_by_id(params[:session_id])
  end

end
