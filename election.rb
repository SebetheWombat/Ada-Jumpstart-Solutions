candidates = {
  "jess jones" => 0,
  "bruce wayne" => 0,
  "matt murdock" => 0
}
winner = ""
numToBeat = -1
n = "I am not an int!"

puts "Time to elect a hero!"
puts "The candidates are: Jess Jones, Bruce Wayne, Matt Murdock.\n\n"

#Keep prompting for number of votes until there are no none digit characters in response
while /\D/.match(n) do
  puts "How many votes are being cast today? "
  n = gets.chomp
  if n == "0"
    puts "What a losey turn out!"
  end
end

t = n.to_i

# for each vote, check if candidate is a key in hash. If yes add one vote to key. If no create new candidate key with one vote
t.times {|x|
  print "Vote ##{x+1}: "
  elect = gets.chomp.downcase
  if candidates.key?(elect)
    candidates[elect] += 1
  else
    puts "Really? You're going to throw your vote away on #{elect}? "
    candidates[elect] = 1
  end
}

puts "\nELECTION RESULTS........\n\n"
puts "Vote Summary: "

candidates.each do |key, votes|
  name = key.split(" ")
  name.each do |i|
    i.capitalize!
  end
  # Determine proper grammar (votes/vote)
  propGram = "votes"
  if votes == 1
    propGram = "vote"
  end
  #Display summary of results
  puts "#{name * " "}: #{votes} #{propGram}"
  #numToBeat keeps track of winning vote number.
  #If current key equals numToBeat there is a tie.
  #If current key has more votes, they replace the current winner.
  if votes == numToBeat
    winner += " and #{name * " "}"
  elsif votes > numToBeat
    numToBeat = votes
    winner = name * " "
  end
end

puts "\nWINNER: #{winner}"
