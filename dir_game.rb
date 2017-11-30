#initialize variables
counter =  0
user_direction = "Forward"

while true do
  
  #welcome user and ask for input
  puts "You're facing forward. Please enter Left, Right or Forward to choose your next step."
  user_direction = gets.chomp.capitalize
  
  case user_direction 
    when "Right"
      puts "You've been eaten by a Goblin! Bye, bye!"
      break
    when "Left"
      puts "You've been scranged by a Werewolf! See you on the Full Moon!"
      break
    when "Forward"
      puts "You live to fight another day - have another go!"
      counter +=1
      if counter == 2
        puts "You have WON THE GAME - well done!"
        break
      end
    else # in case of dodgy input
      puts "You're facing forward. Please enter Left, Right or Forward to choose your next step."
    end
end
    