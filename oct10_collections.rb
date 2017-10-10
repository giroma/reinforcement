require 'pp'

digits = ['1','2','3','4','5','6','7','8','9']
en = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
fr = ['un','deux','trois','quatre','cinq','six','sept','huit','neuf']
bg = ['едно', 'двe', 'три', 'цетири', 'pet', 'шест' ,'sedem' ,'osem','devet']

main_hash = {}

(1..9).each do |index|
  main_hash[index] = {english: "#{en[index-1]}", french: "#{fr[index-1]}", bulgarian: "#{bg[index-1]}"}
end

pp main_hash
