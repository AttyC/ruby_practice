
def game
#set up total wins
  p1_wins = 0
  p2_wins = 0
  rounds = 1

#loop though die rolls
  while (p1_wins < 2 && p2_wins < 2)

  puts "Ding! Ding! Round " + rounds.to_s
  #random die rolls nos 1-12 (instead of two separate rolls)
  p1 = rand(13)
  p2 = rand(13)
    
    #winner of each round
    if p1 > p2
        puts "Player 1 scores with " + p1.to_s
        p1_wins += 1
    else
        puts "Player 2 scores with " + p2.to_s
        p2_wins += 1
    end
    
    rounds +=1
    
  end#end while

    #checks for ultimate winner
    if p1_wins == 2
        puts "Player 1 is the Champ! with " + p1_wins.to_s
        return p1_wins
    elsif p2_wins == 2
        puts "Player 2 is the Champ! with " + p2_wins.to_s
        return p2_wins
    end#end if
end