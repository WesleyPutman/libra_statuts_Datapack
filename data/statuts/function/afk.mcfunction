tag @s remove role_occupe
tag @s remove role_dispo
tag @s add role_afk

# Gestion de l'équipe visuelle
team join team_afk @s

# Protection : le joueur ne peut plus être poussé/déplacé par un mob ou un autre joueur
attribute @s minecraft:knockback_resistance base set 1

# Annonce à tout le monde
tellraw @a [{"selector":"@s"},{"text":" est désormais : ","color":"gray"},{"text":"[AFK]","color":"gray","bold":true,"italic":true}]
