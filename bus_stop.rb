class BusStop

  def initialize(name)
    @name = name
    @queue = []

  end

  def join_queue(person)
    @queue << person
  end

  def queue_count()
    return @queue.size
  end
end

def bus_stop_empty()
  @queue.delete
end
