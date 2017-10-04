class Location
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
end

class Trip < Location
  @@locations = []
  def self.add(name)
    location = Location.new(name)
    @@locations << location
    return location
  end


  def self.travels
    puts 'Began trip'
    @@locations.each_cons(2) do |location|
      puts "Travelled from #{location[0].name} to #{location[1].name}"

    end
    puts 'Ended trip'
  end
end

trip1 = Trip.add('Toronto')
trip1 = Trip.add('Ottawa')
trip1 = Trip.add('Montreal')
trip1 = Trip.add('Quebec City')

Trip.travels
