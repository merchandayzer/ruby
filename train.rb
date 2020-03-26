class Train
  attr_reader :value, :number_cars, :type, :train_station, :station_list


  def initialize(train_number, type, number_cars)
    @train_number = train_number
    @type = type
    @number_cars = number_cars
    @value = 0
  end

  def up_speed(value)
    @value += value
  end

  def brake
    @value = 0
  end

  def add_car
    if value == 0 
      @number_cars += 1
    end
  end

  def delete_car
    if value == 0
      @number_cars -= 1
    end
  end

  def take_route(route)
    @route = route
    @train_station = @route.start_station
    @i = 0
    @station_list = @route.new_station
  end

  def move_forward
    if @i < @station_list.size
      @train_station = @station_list[@i]
      @i += 1
    elsif @i == station_list.size
      @train_station = @route.last_station
      @i += 1
    end
  end

  def move_back
    if @i == 1
      @train_station = @route.start_station
      @i -= 1
    elsif @i > 1
      @train_station = @station_list[@i - 2]
      @i -= 1
    elsif @i == @station_list.length + 1
      @train_station = @station_list[@station_list.length - 1]
      @i -= 1
    end
  end

  def show_station
    puts "Current station: #{@train_station}"
    if @i == 0
      puts "Next station: #{@station_list[@i]}"
    elsif @i == 1
      puts "Previous station: #{@route.start_station}"
      puts "Next station: #{@station_list[@i]}"
    elsif @i > 1 && @i < @station_list.length
      puts "Previous station: #{@station_list[@i - 2]}"
      puts "Next station: #{@station_list[@i]}"
    elsif @i == @station_list.length
      puts "Previous station: #{@station_list[@i - 2]}"
      puts "Next station: #{@route.last_station}"
    elsif @i == @station_list.length + 1
      puts "Previous station: #{@station_list[@i - 2]}"
    end
  end

end
