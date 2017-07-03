puts "**************"
puts "range methods"
puts "**************"

a = ('a'..'e').to_a 
b = (1..10).to_a
puts a 
puts b 
# .include?(value)
puts ('a'..'e').include?("f")
#  .last
puts ('a'..'e').last
#  .max
puts (2..33).max
#  .min
puts (2..33).min