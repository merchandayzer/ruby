class Route
  attr_reader :station, :start_station, :new_station, :last_station

  def initialize(start_station, last_station)
    @start_station = start_station
    @last_station = last_station
    @new_station = []
  end

  def add_station(station1)
    @new_station << station1
  end

  def delete_station(station2)
    @new_station.delete(station2)
  end

  def show_station
    puts @start_station
    @new_station.each { |station1| puts station1}
    puts @last_station
  end
end
