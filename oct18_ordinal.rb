def ordinal(number)
  case number
  when 1,21 then "#{number}st"
  when 2,22 then "#{number}nd"
  when 3, 23 then "#{number}rd"
  when 4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,24,25,26,27,28,29,30 then "#{number}th"
  end
end

input = nil
until input == 31
  p "enter number:"
  input = gets.chomp.to_i
  p ordinal(input)
end
