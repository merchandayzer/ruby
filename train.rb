class Train
  attr_reader :speed, :number_cars, :type, :wagons

  def initialize(train_number)
    @train_number = train_number
    @speed = 0
    @wagons = []
  end

  def take_route(route)
    @route = route
    @current_station_index = 0
    current.take_train(self)
  end

  def move_forward
    if following
      current.delete_train(self)
      following.take_train(self)
      @current_station_index += 1
    end
  end

  def move_back
    if previous
      current.delete_train(self)
      previous.take_train(self)
      @current_station_index -= 1
    end
  end

  def add_wagon(wagon)
    if @speed == 0 && wagon.type == self.type
      @wagons << wagon
    end
  end

  def delete_wagon(wagon)
    if @speed == 0 && wagon.type == self.type
      @wagons.delete(wagon)
    end
  end

  private

  def previous
    if current != @route.start_station
      @route.stations[@current_station_index - 1]
    end
  end

  def current
    @route.stations[@current_station_index]
  end

  def following
    if current != @route.last_station
      @route.stations[@current_station_index + 1]
    end
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

end