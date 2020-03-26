class Station
  attr_reader :train_list, :train_type


  def initialize(name_station)
    @name_station = name_station
    @train_list = []
    @train_type = []
  end

  def take_train(train)
    @train_type << train.type
    @train_list << train
  end

  def delete_train(train)
    @train_list.delete(train)
    @train_type.delete(train.type)
  end

  def show_train_list
    @train_list.each {|train| puts train}
  end


  def show_type_train
    i = 0
    j = 0
    for item in @train_type
      if item == 'freight'
        i += 1
      elsif item == 'passenger'
        j += 1
      end
      
    end
    puts "Namber of freight trains: #{i}"
    puts "Namber of passenger trains: #{j}"
  end

end
