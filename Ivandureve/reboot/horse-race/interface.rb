# interface.rb

# Pseudo-code:
# 1. Print welcome
# 2. Get horses 'define horses name'
# 3. Get user's bet 'select in theses horses the one that is going to win- get.chomp'
# 4. Run the race 'select a horse randomly  and compare it with the user choice '
# 5. Print results 'print if you lose or win'

def you_win(winner)
  `say "Congratulation! YOU WON, #{winner} was the 1st one!"`
end

def you_lose(winner)
  `say "Oups... You picked the wrong one... #{winner} won. Maybe you will be lucky next time!"`
end

p "😊🐴 Welcome! We love you as much as we love horses 😊🐴"

while true

  horses = %w(JAN PIERRE ANTHONY)

  puts "Make your bet! Is it Jan, Pierre or Anthony who is going to win? Let us know...!"
  user_choice = gets.chomp.to_s

  if horses.include?(user_choice.upcase)
    p "You've selected #{user_choice}, good luck!"
    winner = horses.sample
    if user_choice == winner
      you_win(winner)
    else
      you_lose(winner)
    end
  else
    p "Oh, we don't know this horse... Maybe select another one in the list!"
  end
end
