
require_relative "utilities"
require_relative "scraping"


puts "Welcome on Whisly !"
wishlist = [{name: "Iphone", checked: true}, {name: "Ipad", checked: false}]

while true
  puts "What's on your mind ? add, display, delete, check, pick or exit"
  action = gets.chomp
  case action
  when "add"
    puts "What product do you want to add to your wishlist?"
    item_name = gets.chomp
    item = {name: item_name, checked: false}
    wishlist << item

  when "display"
    display(wishlist)

  when "delete"
    display(wishlist)
    puts "Which item to delete ? Give the number"
    index_to_delete = gets.chomp.to_i - 1
    wishlist.delete_at(index_to_delete)

  when "check"
    display(wishlist)
    puts "Which item to check/uncheck ? Give the number"
    index_to_checked = gets.chomp.to_i - 1

    wishlist[index_to_checked][:checked] = !wishlist[index_to_checked][:checked]
    display(wishlist)

  when "pick"
    puts "Which category do you want inspiration for?"
    category = gets.chomp
    results = scrapper(category)
    results[0..9].each_with_index do |element, index|
      puts "#{index + 1} - #{element}"
    end
    puts "What would you add to add to your list ? Choose a number"
    user_number = gets.chomp.to_i - 1
    addition_choise = results[user_number]
    wishlist << {name: addition_choise, checked: false}


    # Demander a l'utilisateur de choisir un produit à ajouter à sa liste
    # L'ajouter à la liste

  when "exit"
    break
  else
    puts "Invalid action. Please try again. :-)"
  end
end


