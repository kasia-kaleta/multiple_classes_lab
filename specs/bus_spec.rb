require('minitest/autorun')
require('minitest/rg')
require_relative('../bus.rb')
require_relative('../person.rb')
require_relative('../bus_stop.rb')

class BusTest < MiniTest::Test

  def setup()
    @bus = Bus.new(22, "Ocean Terminal")
    @passenger1 = Person.new("Tom", 30)
    @passenger2 = Person.new("Pam", 25)
    @passenger3 = Person.new("Bob", 25)

    @passengers = [@passenger1, @passenger2, @passenger3]
  end

  def test_drive
    assert_equal("Brum brum", @bus.drive)
  end

  def test_passenger_count
    assert_equal(0, @bus.passenger_count)
  end

  def test_add_passenger
    @bus.add_passenger(@passenger1)
    assert_equal(1, @bus.passenger_count())
  end

  def test_remove_passenger
    @bus.remove_passenger(@passenger1)
    assert_equal(0, @bus.passenger_count())
  end

  def test_empty_bus
    assert_equal(0, @bus.empty_bus)
  end

   def test_pick_up_from_stop
    @bus.pick_up_from_stop(@passengers)
    assert_equal(3, @bus.passenger_count)
    assert_equal(0, @bus_stop.queue_count())
    assert_equal(0, @bus_stop.bus_stop_empty())
   end

end
