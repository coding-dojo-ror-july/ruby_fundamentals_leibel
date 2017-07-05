# Create an array with the following values: 3,5,1,2,7,9,8,13,25,32. Print the sum of all numbers in the array. Also have the function return an array that only include numbers that are greater than 10 (e.g. when you pass the array above, it should return an array with the values of 13,25,32 - hint: use reject or find_all methodo)
def puzzle_1
  x = [3, 5, 1, 2, 7, 9, 8, 13, 25, 32]
  sum = 0
  x.each do |i|
    sum += i
  end
  puts sum
  new_arr = x.reject! { |n| n < 10 }
  puts new_arr.inspect
end
# puzzle_1

# Create an array with the following values: John, KB, Oliver, Cory, Matthew, Christopher. Shuffle the array and print the name of each person. Have the program also return an array with names that are longer than 5 characters.
def puzzle_2
  x = %w[John KB Oliver Cory Matthew Christopher]
  x.shuffle!
  x.each { |n| puts n }
  new_arr = x.select! { |n| n.length > 5 }
  puts new_arr.inspect
end

# puzzle_2
# Create an array that contains all 26 letters in the alphabet (this array must have 26 values). Shuffle the array and display the last letter of the array. Have it also display the first letter of the array. If the first letter in the array is a vowel, have it display a message.
def puzzle_3
  x = ('a'..'z').to_a
  x.shuffle
  puts x.inspect
  puts x[-1]
  puts x[0]
  puts "#{x.first} is a vowel" if %w[a e i o u].include? x.first
end

# puzzle_3
# Generate an array with 10 random numbers between 55-100.
def puzzle_4
  random_array = []
  10.times { random_array << rand(55..100) }
  puts random_array.inspect
end

# puzzle_4
# Generate an array with 10 random numbers between 55-100 and have it be sorted (showing the smallest number in the beginning). Display all the numbers in the array. Next, display the minimum value in the array as well as the maximum value
def puzzle_5
  random_array = []
  10.times { random_array << rand(55..100) }
  random_array.sort!
  random_array.each { |n| puts n }
  puts 'max: ' + random_array.max.to_s
  puts 'min: ' + random_array.min.to_s
end
# puzzle_5
# Create a random string that is 5 characters long (hint: (65+rand(26)).chr returns a random character)
str = (0...5).map { (65 + rand(26)).chr }.join
puts str
# Generate an array with 10 random strings that are each 5 characters long
str_arr = []
10.times do
  str_arr << (0...5).map { (65 + rand(26)).chr }.join
end
puts str_arr.inspect
