class Station
  attr_reader :name, :trains

  def initialize(name)
    @name = name
  end

  def take_train(train)
    @trains = []
    @trains << train
  end

  def train_by_type(type)
    if type == 'freight'
      @trains.count {|train| train.type == 'freight'}
    elsif type == 'passenger'
      @trains.count {|train| train.type == 'passenger'}
    end
  end

  def delete_train(train)
    @trains.delete(train)
  end

end


