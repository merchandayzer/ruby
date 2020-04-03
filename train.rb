class Train
  attr_reader :speed, :number_cars, :type, :current_station, :previous_station, :next_station


def initialize(train_number, type, number_cars)
    @train_number = train_number
    @type = type
    @number_cars = number_cars
    @value = 0
    @current_station_index = 0
  end

  def up_speed(value)
    @speed += value
  end

  def decrease_speed(value)
    @speed -= value
    if @speed < 0
      @speed = 0
    end
  end

  def add_car
    if value == 0 
      @number_cars += 1
    end
  end

  def delete_car
    if value == 0
      if @number_cars > 0
      @number_cars -= 1
      end
    end
  end

  def take_route(route)
    @route = route
  end

  def move_forward
    if @current_station_index < @route.stations.size - 1
      @current_station = @route.stations[@current_station_index + 1]
      @current_station_index += 1
    end
  end

  def move_back
    if @current_station_index > 0
    @current_station = @route.stations[@current_station_index - 1]
    @current_station_index -= 1
    end
  end

  def previous
    if @current_station_index > 0
    @previous_station = @route.stations[@current_station_index - 1]
    end
  end

  def next
    if @current_station_index < @route.stations.size - 1
      @next_station = @route.stations[@current_station_index + 1]
    end
  end

end
