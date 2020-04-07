class Train
  attr_reader :speed, :number_cars, :type


  def initialize(train_number, type, number_cars)
    @train_number = train_number
    @type = type
    @number_cars = number_cars
    @speed = 0
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
    if @speed == 0 
      @number_cars += 1
    end
  end

  def delete_car
    if @speed == 0
      if @number_cars > 0
      @number_cars -= 1
      end
    end
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
      previous.take_train(self)
      current.delete_train(self)
      @current_station_index -= 1
    end
  end

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

end
