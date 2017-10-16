hash = {}
(1..50).each do |key|
  if key % 14 == 0
  value = key * 2
elsif key % 2 == 0
    value = key + 1
  elsif key % 7 == 0
    value = key - 1
  else
    value = key
  end
  hash[key] = value

end
p hash
