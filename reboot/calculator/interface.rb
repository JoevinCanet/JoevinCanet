require_relative "calculator"

choise = "y"

  while choise == "y"
    p "Entrez le premier chiffre de votre opération"
    first_number = gets.chomp.to_f

    p "Entrez le second chiffre de votre opération"
    second_number = gets.chomp.to_f

    p "Entrez le type d'opération souhaité (+, -, /, *)"
    operation = gets.chomp

    result = calculate(first_number, second_number, operation)

  if result
    puts "Votre résultat est #{result}"
  else
    puts "Résultat invalide."
  end

  puts "Veux-tu continuer ? (y/n)"
  choise = gets.chomp
end
È
