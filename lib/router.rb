require 'controller' # Appeler la classe Controller avec require

class Router

  def initialize # Après avoir appeler la classe Controller, il faut l'instancier (=créer une instance) à l'initialize
    @controller =  Controller.new # Instance de la classe Controller (va permettre de déclencher la bonne méthode : ajout potin, supprimer ou lister tous)
  end #ainsi, un "Router.new" lancé par app.rb va créer automatique une instance "@controller"

  def perform #rappelle-toi que l'on fait "Router.new.perform" dans app.rb => après initialize, on définit perform.
    puts "BIENVENUE DANS THE GOSSIP PROJECT"
    while true # Le routeur va faire une boucle infinie (while true) qui va demander ce que le user veut faire (avec options)

      #on affiche le menu
      puts "Tu veux faire quoi BG ?"
      puts "1. Je veux créer un gossip"
      puts "4. Je veux quitter l'app"
      params = gets.chomp.to_i #on attend le choix de l'utilisateur

      case params #en fonction du choix | Plus d'infos sur case-when : https://stackoverflow.com/questions/948135/how-to-write-a-switch-statement-in-ruby
      when 1
        puts "Tu as choisi de créer un gossip"
        @controller.create_gossip # grâce @controller.create_gossip, le routeur passe la main à la classe Controller en exécutant la méthode create_gossip
      when 4
        puts "À bientôt !"
        break #ce "break" permet de sortir de la boucle while. C'est même la seule façon d'en sortir.
      else
        puts "Ce choix n'existe pas, sorry" #si l'utilisateur saisit une entrée non prévue, il retourne au début du "while true". C'est pour ça que la boucle est infinie: potentiellement, il peut se gourer jusqu'à la fin des temps :)
      end
    end
  end
end
