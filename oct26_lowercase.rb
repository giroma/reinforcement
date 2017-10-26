words = ["Totam", "ut", "odit","quis", "Maiores", "unde", "EX", "EST", "corporis"]


words.each do |word|
  if word.length > 4 && word.downcase == word
    p "long and lowercase"
  elsif word.downcase == word
    p "lowercase"
  elsif word.length > 4
    p "long"
  else
    p word
  end

end
