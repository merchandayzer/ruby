class Station
  attr_reader :name, :trains

  def initialize(name)
    @name = name
  end

  def take_train(train)
    @trains = [train]
  end

  def freight
    @trains.count {|x| x.type == 'freight'}
  end

  def passenger
    @trains.count {|x| x.type == 'passenger'}
  end

  def delete_train(train)
    @trains.delete(train)
  end

end


