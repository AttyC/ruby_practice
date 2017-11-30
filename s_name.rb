puts "Please enter your name"
name = gets.chomp
if name.start_with?("s" , "S")
  puts name.upcase
else
  puts "Hi, #{name.capitalize}"
end

