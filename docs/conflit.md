# Conflit de fusion sur config.yml

Le conflit vient du fait que les branches fix/port-9090 et fix/port-8000 sont parties du même commit de main et ont modifié la même ligne (port) de config.yml avec des valeurs différentes.
La première fusion s'est faite en fast-forward, mais à la seconde Git ne pouvait pas choisir seul entre 9090 et 8000, il a donc arrêté la fusion et mis les deux versions entre les marqueurs <<<<<<<, ======= et >>>>>>>.
On a résolu en gardant port: 9090, en supprimant les marqueurs, puis avec git add et git commit.
Pour l'éviter, il faut garder des branches courtes, fusionner souvent dans main et récupérer main avant de commencer une tâche.
Il faut aussi se mettre d'accord dans l'équipe quand deux personnes doivent toucher au même fichier, par exemple en ne gardant qu'une seule branche pour le changement de port.
