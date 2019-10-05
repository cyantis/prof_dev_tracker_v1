module EventsHelper
  def event_type_arr
    Event.all.collect {|e| e.category}.sort.uniq
  end

end
