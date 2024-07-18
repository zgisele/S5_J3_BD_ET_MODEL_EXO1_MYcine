# lib/router.rb
require_relative 'controller'

class Router
    #attr_accessor :controller

    #On veut qu'un "route.new" lancé ,créer automatiqueune instance "@controller".
    def initialize
        @controller = Controller.new
    end

    def perform

        puts "BIENVENUE DANS THE GOSSIP PROJECT"
  
        while true
  
         #Affichage du menu
  
         puts "Tape:"
  
         puts "1 Si tu veux créer un gossip"

         puts "2 Si tu veux afficher tous les potin"
  
         puts "4 Si tu veux quitter l'app"

        params = gets.chomp.to_i #on attend le choix de l'utilisateur
         
  
         case params #en fonction du choix
  
           when 1
  
             puts "Tu as choisi de créer un gossip"
  
             @controller.create_gossip

           when 2

             puts "Tu as choisi d'afficher tous les potin"
             @controller.index_gossips
  
           when 4
  
             puts "À bientôt !"
  
           break #Ce "break" permet de sortir de la boucle while. C'est même la seule façon d'en sortir.
  
         else
  
           puts "Ce choix n'existe pas, merci de ressayer" #Si l'utilisateur saisit une entrée non prévue, il retourne au début du "while true".
  
           #C'est pour ça que la boucle est infinie: potentiellement, il peut se gourer jusqu'à la fin des temps :)
  
         end
  
        end
  
    end

end
Router.new.perform