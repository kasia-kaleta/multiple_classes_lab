class Bus

  def initialize(bus_number, destination)
    @bus_number = bus_number
    @destination = destination
    @passengers = []
  end

  def drive()
    return "Brum brum"
  end

  def passenger_count()
    return @passengers.size
  end

  def add_passenger(new_passenger)
    @passengers << new_passenger
  end

  def remove_passenger(new_passenger)
    @passengers.delete(new_passenger)
  end

  def empty_bus()
    @passengers.clear
    return passenger_count()
  end

  def pick_up_from_stop(queue)
    @passengers << queue
  end




end
