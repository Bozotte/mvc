# Model-View-Controller | Modèle d'architecture de logiciel orienté objet

1 / Le routeur redirige, en fonction de ce que fait l'utilisateur (= quelle URL il choisit) vers la bonne méthode du bon controller (= le chef d'orchestre de tout cela) > il va rediriger l'utilisateur vers une méthode précise du controller des messages.
2 / Le controller va demander à un model de récupérer en base de données les informations nécessaires. Cette méthode (controller) aura 2 rôles : 

a) Récupérer les informations de la base de données qu'il faut afficher en faisant une demande au model (dont le rôle est d’interagir avec la base de données).

b) Une fois les informations récupérées du model, le controller les envoie à la view correspondant

3 / Le model : Une autre classe Ruby qui va avoir pour rôle d'interagir avec la base de données sur demande du controller. 

4 / La view : Une fois que le controller a toutes les informations à afficher, il les rend disponibles à une dernière classe Ruby : la view. Celle-ci a pour rôle de construire du HTML avec les informations envoyées par le controllerCes informations sont ensuite renvoyées à une view pour qu'elle puisse construire la page HTML qu'on envoie à notre utilisateur. 
 / 
# Trois composantes du MVC

- Gestion base de données (Model) : Ajouts / Suppression d'informations
- Gestion intéractions avec l'utilisateur/trice (View): Construction pages HTML
- Chef d'orchestre (Controller) : Lien entre chaque composant
