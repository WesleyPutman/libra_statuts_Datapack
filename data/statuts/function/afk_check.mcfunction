# 1. Récupérer la position actuelle de chaque joueur (x100 pour la précision)
execute as @a store result score @s pos_x run data get entity @s Pos[0] 100
execute as @a store result score @s pos_y run data get entity @s Pos[1] 100
execute as @a store result score @s pos_z run data get entity @s Pos[2] 100

# 2. S'il n'a pas bougé depuis le dernier tick : +1 sur son timer d'inactivité
execute as @a if score @s pos_x = @s last_x if score @s pos_y = @s last_y if score @s pos_z = @s last_z run scoreboard players add @s afk_timer 1

# 3. S'il a bougé : on le "réveille" (reset du timer + sortie de l'AFK si besoin)
execute as @a unless score @s pos_x = @s last_x run function statuts:afk_wake
execute as @a unless score @s pos_y = @s last_y run function statuts:afk_wake
execute as @a unless score @s pos_z = @s last_z run function statuts:afk_wake

# 4. On mémorise la position pour la comparaison du prochain tick
execute as @a run scoreboard players operation @s last_x = @s pos_x
execute as @a run scoreboard players operation @s last_y = @s pos_y
execute as @a run scoreboard players operation @s last_z = @s pos_z

# 5. Au bout de 10 minutes (12000 ticks) d'inactivité : passage AFK automatique
execute as @a[scores={afk_timer=12000..}] unless entity @s[team=team_afk] run function statuts:afk
