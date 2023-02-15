def valeur_entree
    puts "veuillez saisir une note comprise entre 1 et 5"
    point = gets.to_i
while true
    if point <= 0 || point>5
    puts "veuillez saisir une note comprise entre 1 et 5"
    point = gets.to_i

    else puts "Merci de saisir un commentaire"
    comment= gets
    post = "point：#{point}　comment：#{comment}"
        File.open("data.txt", "a") do |file|
          file.puts(post)
        end
         break
    end
end
end


def historique_resultat
  puts"historique de résultats"
  File.open("data.txt", "r") do |file|
    file.each_line do |line|
      puts line
    end
  end
end


while true
  puts "Veuillez sélectionner le processus que vous souhaitez effectuer"
  puts "1 : Entrez les points de notation et les commentaires"
  puts "2 : Vérifiez l'historique des résultats"
  puts "3 : Quitter"
  num = gets.to_i

  case num
  when 1
    valeur_entree
  when 2
    historique_resultat
  when 3
    puts "Fin"
    break
  else
    puts "Veuillez saisir une valeur comprise entre 1 et 3"
  end
end