require 'csv'

# Ne pas oublier que le model (gossip.rb) a aussi pour rôle d'intéragir avec la base de données.
class Gossip # la classe Gossip constitue le modèle + va permettre de créer des instances = autant de potins

  attr_reader :content, :author 

  def initialize(author, content) # Méthode initialize

    @content = content # premiere variable d'instance
    @author = author # deuxième variable d'instance
  end

  def save # Il faut juste changer les données mais c'est la méthode (cf : github)
     CSV.open('gossip.csv', 'w') do |file|
       file << ["item", "checked", "personal", "code"]
       list.each{|item| file << [item.item, item.checked, item.personal, item.code]}
     end
   end
end # Fermeture class Gossip
