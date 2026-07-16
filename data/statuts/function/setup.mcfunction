scoreboard objectives add trig_statut trigger
scoreboard objectives add trig_menu trigger

team add team_afk
team add team_occupe
team add team_dispo

# Couleurs et préfixes affichés au-dessus de la tête et dans le Tab (liste des joueurs)
team modify team_afk color gray
team modify team_afk prefix ["",{"text":"[AFK] ","color":"gray","bold":true}]

team modify team_occupe color red
team modify team_occupe prefix ["",{"text":"[OCCUPÉ] ","color":"red","bold":true}]

team modify team_dispo color green
team modify team_dispo prefix ["",{"text":"[DISPO] ","color":"green","bold":true}]

# Objectifs pour la détection d'inactivité (AFK automatique)
scoreboard objectives add afk_timer dummy
scoreboard objectives add pos_x dummy
scoreboard objectives add pos_y dummy
scoreboard objectives add pos_z dummy
scoreboard objectives add last_x dummy
scoreboard objectives add last_y dummy
scoreboard objectives add last_z dummy
