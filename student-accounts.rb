student_file = ARGV.first
read_file = open(student_file)
student_names = []
id_nums = []
emails = []

# Get student names from file
read_file.each { |name|
  student_names << name.upcase
}
num_stud = student_names.length

# Assign random ID from 111111 to 999999 without repeats
num_stud.times do
  id = rand(888889) + 111111
  while id_nums.include? id
    id = rand(888889) + 111111
  end
  id_nums << id
end

# Assign email address for student
for i in (0..num_stud-1) do
  name = student_names[i].split
  len = name.length
  num = id_nums[i].to_s
  if len > 2
    last = name[len-1]
    initials = ""
    for n in 0..len-2
      initials += name[n][0]
    end
    email = initials + last + num[-3,3]
  else
  email = name[0][0] + name[1] + num[-3,3]
  end
  emails << email + "@adadevelopersacademy.org"
end

# Print out student info
for x in 0..emails.length
  puts "#{student_names[x]} #{id_nums[x]} #{emails[x]}"
end

read_file.close
