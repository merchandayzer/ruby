class CargoTrain < Train

  def initialize(train_number)
    @train_number = train_number
    @speed = 0
    @wagons = []
    @type = 'cargo'
  end

end