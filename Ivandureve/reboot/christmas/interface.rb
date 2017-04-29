# interface.rb

# Pseudo-code:
# 1. Welcome
# 2. Display menu (list / add / delete / mark )
# 3. Get user action
# 4. Perform the right action

puts "Welcome on Christmas List! Here you just enter what you want
and your budget, we manage the rest! We make sure you get the best
price by comparing prices online! You can, if you want automatise
the buying process! You decide, we do!"

  list = []

  action = ""

  while action != "exit"
    puts "What do you want to do? list; add; delete; mark or exit"
    action = gets.chomp.downcase

    case action

    when "add"
      puts "What do you want to add?"
      add_list = gets.chomp.downcase
      list << add_list
      p "You've succesfully add #{add_list} to your list!"

    when "delete"
      p list
      puts "What item do you want to delete?"
      item_to_delete = gets.chomp.downcase
      list.delete("#{item_to_delete}")
      p "You've succesfully deleated #{item_to_delete} from your list"

    when "mark"
      p list
      puts "What do tou want to mark?"
      list_mark =  gets.chomp
      rocko = "✓  " + list_mark
      list.map!{|x|x == list_mark ? rocko : x}

    when "list"
      p list

    end
  end

  p list

# scraping_etsy.rb
require "open-uri"
require "nokogiri"

puts "What are you searching on Etsy?"
article = gets.chomp

puts "What is your budget?"
budget = gets.chomp

file = open("https://www.etsy.com/search?q=#{article}")

doc = Nokogiri::HTML(file)

doc.search(".card").each do |card|
  nom = card.search(".card-title").text.strip
  price = card.search(".currency").text.strip
  currency_symbol = card.search(".currency-symbol").text.strip


  puts nom + ": " + price + " " + currency_symbol
end



