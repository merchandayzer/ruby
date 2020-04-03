class Route
  attr_reader :stations

  def initialize(start_station, last_station)
    @stations = []
    @stations << start_station
    @stations << last_station
    @index_add_station = 1
  end

  def add_station(station)
    x = @stations[@index_add_station]
    @stations[@index_add_station] = station
    @stations[@index_add_station+1] = x
    @index_add_station += 1
  end

  def delete_station(station)
    @new_station.delete(station)
  end

  def show_stations
    @stations.each {|station| puts station}
  end
  
end
