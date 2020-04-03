class Station
  attr_reader :name, :trains, :type_trains

  def initialize(name)
    @name = name
    @trains = []
  end

  def take_train(train)
    @trains << train
    @type_trains = {}
    @type_trains['freight'] = @trains.count {|x| x.type == 'freight'}
    @type_trains['passenger'] = @trains.count {|x| x.type == 'passenger'}
  end

  def delete_train(train)
    @trains.delete(train)
  end

end


