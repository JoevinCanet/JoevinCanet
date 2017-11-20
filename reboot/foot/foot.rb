#1 le programme demande :
# => les équipe
# => le nombre de points
# => jusqu'à l'utilisateur tape exit

# 2 - Le programme affiche le classement


team_ranking = {
                "PSG" => 1,
                "Bordeaux" => 2,
                "Marseille" => 10,
              }

while true
  puts "Sélectionnez votre équipe favorite ?"
  team_name = gets.chomp

  if team_ranking.has_key?(team_name)
  score = team_ranking[team_name]
  puts "le score de #{team_name} est #{score}"

  else
  puts "Votre équipe n'est pas séclectionnée. Recommencez !"
  end
end





