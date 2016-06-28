# initialize variables
valid_ins = ['0','1','2','3','4','5','6','7','8','9','c','C','.']
valid = false
monies = ""
puts "Here for some candy? \n(All candy is virtual)"

# continues to prompt for user input until the input can be transformed to a valid float
while !valid do
  count = 0
  dots = 0
  print "How many monies do you have? $"
  monies = gets.chomp
  len = monies.length
  # checks each character entered against an array of valid characters
  for x in 0..len-1
    if !valid_ins.include?(monies[x])
      valid = false
    elsif valid_ins.include?(monies[x])
      # keeps track of decimal points added (only 0 or 1 are valid)
      if monies[x] == "."
        dots += 1
      end
      # a c is only valid at the end of user input
      if (monies[x] == 'c' || monies[x] == 'C') && x != len-1
        count -= 1
      end
      count += 1
    end
    if dots <= 1
      if count == monies.length
        valid = true
      end
    end
  end
end

# converts input with c to cents
if monies[len-1] == "c" || monies[len-1] == "C"
  newMonies = monies[0...len-1]
  monies = (newMonies.to_f)/100
else
  monies = monies.to_f
end

# hash of available choices
choices = {
  "a" => 55,
  "reeses" => 55,
  "b" => 150,
  "chex mix" => 150,
  "c" => 30,
  "gum" => 30,
  "d" => 75,
  "twix" => 75,
  "e" => 65,
  "twizzler bite" => 65
}

puts "\n$%.2f? That's all? \nHere are your choices. \n\n" %monies
puts "A: $0.55 Reeses"
puts "B: $1.50 Chex Mix"
puts "C: $0.30 Gum"
puts "D: $0.75 Twix"
puts "E: $0.65 Twizzler Bite"
print "\nSo what'll it be? "
choice = gets.chomp

# keep prompting for input until user enters a key in the choices hash
while !choices.key?(choice.downcase) do
  print choice + " is not a valid choice. Please try again: "
  choice = gets.chomp
end

# uses choices hash to find fixed num value associated with user input
# If value is larger than money entered inform user they cannot afford item
if choices[choice.downcase] > (monies * 100)
  puts "\nYou can't afford that! Go home!"
else
  change = ((monies *100) - choices[choice.downcase])/100
  puts "\nHere you go! $%.2f is your change." %change
end

