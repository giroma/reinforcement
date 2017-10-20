classroom = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]
sit = nil # so nill can be called outside the loop its defined in
classroom.each_with_index do |row, row_index|
  row.each_with_index do |seat, seat_index|
    if seat == nil
      p "Row #{row_index+1} seat #{seat_index+1} is free. Do you want to sit(y/n)?"
      sit = gets.chomp
      if sit == 'y'  #needs to be called outside row loop
        p "whats your name?"
        name = gets.chomp
        classroom[row_index][seat_index] = name
        break
         #end row loop
      end
    end
  end
  break if sit == 'y' #also end outer classroom loop
end

p classroom
