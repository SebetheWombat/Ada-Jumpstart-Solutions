#Initialize variables
noun, adjective, adjective2, noun2, verb, adverb, verb2, exclaim, pronoun, adverb2, num, name, adj, verb3 = "","","","","","","","","","","","","","",""

#Use do/while loop to ensure user enters info
while noun.length < 1 do
  print "Enter a noun: "
  noun = gets.chomp
end

while adjective.length < 1 do
  print "Enter an adjective: "
  adjective = gets.chomp
end
while adjective2 == "" do
    print "Another adjective just to be safe: "
    adjective2 = gets.chomp
end
while noun2 == "" do
    print "Annnd another noun: "
    noun2 = gets.chomp
end
while verb == "" do
    print "Enter a verb ending in ing: "
    verb = gets.chomp
end
while adverb == "" do
    print "Enter an adverb: "
    adverb = gets.chomp
end
while verb2 == "" do
    print "Enter a verb: "
    verb2 = gets.chomp
end
while exclaim == "" do
    print "Enter an exclamation: "
    exclaim = gets.chomp
end
while pronoun == "" do
    print "Enter a pronoun: "
    pronoun = gets.chomp
end
while adverb2 == "" do
    print "One last adverb please: "
    adverb2 = gets.chomp
end
while num == "" do
    print "Enter a number: "
    num = gets.chomp
end
while name == "" do
    print "Enter a name: "
    name = gets.chomp
end
while adj == "" do
    print "Enter an adjective: "
    adj = gets.chomp
end
while verb3 == "" do
    print "Finally, enter a verb ending in s: "
    verb3 = gets.chomp
end

#Insert user info into story
sentence = "Walking down the " + noun + " on a(n) " + adjective + " Sunday afternoon was not as " + adjective2 + " as you might imagine. First a " + noun2 + " comes " + verb + " " + adverb + " fast! I barely had time to " + verb2 + " out of the way! " + exclaim.upcase + "! " + pronoun.capitalize + " yelled " + adverb2 + ". Just then, not " + num + " minutes later " + name.capitalize + " the " + adj + " chihuahua that lives next door goes tearing out of its yard, " + verb3 + " the tire and the " + noun2 + " just bursts into flames!"

#Display the magical results
print sentence
