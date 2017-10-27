ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]

hash = Hash.new(0)
ballots.each do |ballot|
  ballot.each do |k, v|
    points = 4-k
    hash[v] += points
  end

end

winner = hash.max_by{|name, votes| votes}
puts "The winner is #{winner[0]}, with #{winner[1]} votes"
