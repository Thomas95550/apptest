#1e Lancement:
  Pour le premier lancement il vous faudra drop les tables et les migrer. Ensuite, il vous suffira juste de lancer le serveur. 
  
  "Rake db:drop" => drop les tables.
  
  "Rake db:migrate" => migre les tables.
  
  "Rails s" => lance le serveur.

Vous pourez ensuite lancer le serveur autant de fois que vous le souhaitez.

#fonctionnalité

    -Connection avec omniauth
    
    - Récuperation de ses propres gists stockés dans la DB (On peut ainsi voir le contenu du gist, il peut etre téléchargé par la suite via un "Clique droit => "Enregistrer sous...").
    
    - Possibilité de créer ses propres catégories (propres à chaque membre) et ainsi stocker ses Gists dans la liste de catégorie personalisable (encore une fois propre à chaque membre).
    
    - Une recherche peut etre faite par rapport a un nom d'utilisateur : elle listera tous ses gists avec leur contenu.

Cacquevelle Thomas.
