require_relative '../lib/gossip' # Le controller joue avec le model et la view, on doit les require
require_relative '../lib/view'

class Controller

  def create_gossip # METHODE GOSSIP #
    @Gossip = Gossip.new

  end
