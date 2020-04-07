class Station
  attr_reader :name, :trains

  def initialize(name)
    @name = name
    @trains = []
  end

  def take_train(train)
    @trains << train
  end

  def train_by_type(type)
    @trains.count {|train| train.type == type}
  end

  def delete_train(train)
    @trains.delete(train)
  end

end


