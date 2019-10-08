module ManagersHelper

  def manager_event_arr
    Event.recent_events
  end

end
