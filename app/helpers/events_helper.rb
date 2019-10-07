module EventsHelper
  def event_type_arr
    Event.event_order.collect { |e| e.category }
  end

end
