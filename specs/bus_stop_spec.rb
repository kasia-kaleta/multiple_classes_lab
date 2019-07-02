require('minitest/autorun')
require('minitest/rg')
require_relative('../bus_stop.rb')
require_relative('../person.rb')

class BusStopTest < MiniTest::Test

  def setup()
    @bus_stop = BusStop.new("Ocean Terminal")
    @person = Person.new("Hannah", 15)
  end

  def test_join_queue
    @bus_stop.join_queue(@person)
    assert_equal(1, @bus_stop.queue_count)
  end


end
