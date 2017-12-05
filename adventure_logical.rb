# Write an adventure game that the player plays from the command line
# by typing in commands like `look`, `north` etc.  They can move
# between rooms, look at things and interact with objects.  The game
# should have this behaviour:
# * Two rooms: hall and study.
# * The player starts in the hall.
# * General commands (can be run at any time).
#   * `quit`: `puts`es `Bye!` and the program stops executing.
#   * (command incorrect for situation): nothing happens, nothing is
#                                        `puts`ed.
# * Room-specific commands
#   * Hall
#     * `look`: `puts`es `You are standing in an hall with a marble
#               floor. You see a door.`
#     * `north`: Move to the study.
#   * Study:
#     * `look`: `puts`es `You are in a warm and cosy study. You see a
#               safe. You see a desk.`
#     * `look at desk`: `puts`es `You see a piece of paper that reads,
#                       The combination is 2451.`
#     * `south`: Move to the hall.
#     * `enter combination 2451`: `puts`es `You see some diamonds in
#                                 the safe, pick them up and make your
#                                 escape` and the program stops
#                                 executing.
#
# * Note: To stop the program (e.g. when the user types `quit` or when
#   they win the game), don't use `exit` to quit the program because
#   this will break the automated tests.  To exit a while loop early,
#   use the `break` keyword.
#
# * Note: When you run the automated tests, the tests will simulate
#   the user input.  You shouldn't need to enter any input manually.
#   If the tests hang when you run them, it probably means your code
#   doesn't work correctly, yet.

room = "hall"

while room 
  puts "Enter 'look' to look around the hall or 'north' to move to another room"
  instruction = gets.chomp.downcase
  
  if instruction == "quit"
    room = nil
    puts "Bye!"
    break
  end
  
  #in hall
  if instruction == "look"
      puts "You are standing in an hall with a marble floor. You see a door."

  #in study
  elsif instruction == "north"
    room = "study"
    
    
    
     while room == "study"
      puts "Enter 'look' to look around the study or 'south' to move to another room"
      instruction = gets.chomp.downcase
    
      if instruction == "look" # in study
        puts "You are in a warm and cosy study. You see a safe. You see a desk."
        puts "Enter 'look at desk' to investigate or 'south' to move to another room"
        instruction = gets.chomp.downcase

        
        
        if instruction == "look at desk"
          puts "You see a piece of paper that reads, The combination is 2451."
          puts "Enter 'enter combination 2451' to open the safe or 'south' to move to another room"
          instruction = gets.chomp.downcase
          
         
          
          if instruction == "enter combination 2451"
            puts "You see some diamonds in the safe, pick them up and make your escape"
            room = nil
            break
          elsif instruction == "south"
            room = "hall"
          elsif instruction == "quit"
            room = nil
            puts "Bye!"
            break
          end
          
          
        elsif instruction == "south"
          room = "hall"
          
        elsif instruction == "quit"
          room = nil
          puts "Bye!"
          break
        end


      elsif instruction == "south"
        room = "hall"
      elsif instruction == "quit"
       room = nil
        puts "Bye!"
      break
      end  #end look / south 
    end # end while study
  end # end if initital instruction
end # end while room