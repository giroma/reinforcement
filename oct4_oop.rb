class Location
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
end

class Trip < Location
  def initialize
    @locations = []
  end

  def add(name)
    location = Location.new(name)
    @locations << location
    return location
  end


  def travels
    puts 'Began trip'
    @locations.each_cons(2) do |location|
      puts "Travelled from #{location[0].name} to #{location[1].name}"

    end
    puts 'Ended trip'
  end
end

trip1= Trip.new
trip1.add('Toronto')
trip1.add('Ottawa')
trip1.add('Montreal')
trip1.add('Quebec City')

trip1.travels
