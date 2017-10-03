collection = { data: { rooms:
    [ { id: 1, room_number: "201", capacity: 50}, { id: 2, room_number: "301", capacity: 200 }, { id: 3, room_number: "1B", capacity: 100}
    ],
    events: [
      { id: 1, room_id: 2, start_time: 18, end_time: 20, attendees: 75 },
      { id: 2, room_id: 1, start_time: 10, end_time: 18, attendees: 25 },
      { id: 3, room_id: 2, start_time: 10, end_time: 18, attendees: 20 },
      { id: 4, room_id: 3, start_time: 18, end_time: 21, attendees: 56 },
      { id: 5, room_id: 1, start_time: 10, end_time: 18, attendees: 65 },
    ]
  }
}

collection[:data][:rooms].each do |hash_rooms|
    puts hash_rooms[:capacity] if hash_rooms.has_value?("201")
end


collection[:data][:events].each do |hash_events|
  if hash_events[:room_id] == 1
    if hash_events[:attendees] > 50
      puts "No room"
    else
      puts "OK"
    end

  else
    puts "not room 201"
  end

end
