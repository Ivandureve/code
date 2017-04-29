# interface.rb

# Pseudo-code
# 5/IS the product available?
# 6/Do you want other item
#comparé produit entré par utilisateurs aux produit existant
#if product does not exist
# p "Sorry we cannot recognise your product"
#p store

# if product exist:
def product_in_store(product, store)
  store.key?(product.to_s)
end

def product_price(product, store)
  if product_in_store(product, store)
    store[product]["price"]
  else
    p "Sorry we got only #{[store]["stock"]}"
  end
end

p "Welcome this e-shop is amazing! Have an good healthy time with us!"
cart = []
store = {
  "apple"  => {"price" => 2.00, "stock" => 50},
  "banana" => {"price" => 1.00, "stock" => 40},
  "mango"  => {"price" => 2.00, "stock" => 30},
}

puts "Here are our products!"
p store.to_s


puts "What do you want motherfuckers?"
product = gets.chomp.downcase
  while product != ""
    puts "How many #{product} do you want?"
    quantity = gets.chomp.to_i
    if quantity <= store[product]["stock"]
      cart << product_price(product, store) * quantity
      store[product]["stock"] -= quantity
    else
      p "Sorry we got only #{store[product]["stock"]} do you want to buy #{store[product]["stock"]}"
      answer = gets.chomp.downcase
      if answer == "yes"
        cart << product_price(product, store) * store[product]["stock"]
        store[product]["stock"] -= store[product]["stock"]
      else
        puts "Sorry we do not have #{quantity} products available"
      end
    end
    puts "What els do you wanna buy?"
    product = gets.chomp.downcase
  end


sum = 0

cart.map { |a| sum+=a }
p "The total price is #{sum} €"
# print detail du cart




















