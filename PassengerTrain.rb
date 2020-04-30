class PassengerTrain < Train

  def initialize(train_number)
    @train_number = train_number
    @speed = 0
    @wagons = []
    @type = 'passenger'
  end

end