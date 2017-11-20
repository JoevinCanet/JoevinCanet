# objectif : coder un logiciel de course
# se donner un panier vide
# se donner un stock de produits

# associer un prix à chaque produit

# afficher le stock de produits et le prix de chaque produit - faire un Hash

# demander à l'utilisateur quel produit
# ajouter ce choix au panier
# recommancer le choix

# additionner le prix de chaque produit pour déterminer le montant total du panier
# afficher le prix final

cart = {}

items = {
  "pomme" => {price: 3.5, stock: 100},
  "orange" => {price: 4.0, stock: 20},
  "quinoa" => {price: 12.0, stock: 30},
  "pain" => {price: 1.2, stock: 10}
}

# Boucle de prise de commande
while true
  puts "Les produits disponibles sont : "

  items.each do |name, infos|
    puts " - #{name} (#{infos[:price]} €) - (#{infos[:stock]} disponibles)"
  end

  puts "Quel produit voulez-vous ajouter ? 'exit' pour sortir."
  user_choise = gets.chomp
  if user_choise == "exit"
    break
  elsif items.has_key? user_choise
    #remplir le hash cart
    puts "En quelle quantité ?"
    quantity = gets.chomp.to_i
    availavable_stock = items[user_choise][:stock]

# Check if quantity available and ask user for correction

  while quantity > availavable_stock
    puts "Il n'y a que #{availavable_stock} #{user_choise} disponibles. Combien en veux-tu ?"
    quantity = gets.chomp.to_i
  end

# Add to cart
    if cart.has_key? user_choise
      cart[user_choise] += quantity
    else
      cart[user_choise] = quantity
    end

# Decrement stock
    items[user_choise][:stock] -= quantity

  else
    puts "Invalid choise."
  end
end


#Calcul du ticket de caisse
puts "-" * 20

sum = 0

cart.each do |name, quantity|
  price = items[name][:price]
  subtotal = price * quantity
  puts "- #{quantity} #{name} (#{price} € l'unité) => #{subtotal} €"
  sum += subtotal
end

puts "=> TOTAL : #{sum} €"


















