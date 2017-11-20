# objectif parier sur le vainqueur

# Message d'accueil
# Se donner le tableau des chevaux
# Afficher les chevaux en ligne
# Demanderà l'utilisateur sur quel cheval il veut parier
# Stoker le choix
# Simuler une course
# Stocker le résultat
# Comparer le choix au résultat

puts "Bonjour, bienvenue à Longchamp"

horses = ["Canaçon", "Sonic", "Belle des vents", "Bad Boy"]

while true

  puts "Voici les chevaux sur lesquels tu peux parier"

  horses.each_with_index do |horse, index|
    puts "Cheval numéro #{index + 1 } - #{horse}"
  end

  puts "Sur quel cheval veux-tu parier ? Donne un numéro ou tape 'exit' pour quitter la course"
  answer = gets.chomp
  if answer == "exit"
    break
  else
    index = answer.to_i
    bet = horses[index - 1]
    result = horses.shuffle
    winner = result.first

    if bet == winner
      puts "Tu décroches le gros lot"
    else
      puts "C'est perdu, le vainquer était #{winner}. Tu veux parier à nouveau ?"
    end
  end
end


puts "A bientôt"

