# interface.rb

# Pseudo-code:
# 1. Print welcome
# 2. Get horses 'define horses name'
# 3. Get user's bet 'select in theses horses the one that is going to win- get.chomp'
# 4. Run the race 'select a horse randomly  and compare it with the user choice '
# 5. Print results 'print if you lose or win'



p "😊🐴 Welcome! We love you as much as we love horses 😊🐴"

while true

horses = %w(Jan Pierre Anthony)

puts "Make your bet! Is it Jan, Pierre or Anthony who is going to win? Let us know...!"
user_choice = gets.chomp

  # if user_choice.include?(horses)
  #   p "Good choice, you've selected #{user_choice}"
  # else
  #   p "Oh, we don't know this horse... Maybe select another one in the list!"
  # end

winner = horses.sample

  if user_choice == winner
    p "Congratulation! YOU WON"
  else
    p "Oups... You picked the wrong one... Maybe you will be lucky next time!"
  end
end
