tag @s remove role_afk
tag @s remove role_occupe
tag @s add role_dispo

# Gestion de l'équipe visuelle
team join team_dispo @s

# On retire la protection anti-poussée (plus utile hors AFK)
attribute @s minecraft:knockback_resistance base set 0

# Annonce à tout le monde
tellraw @a [{"selector":"@s"},{"text":" est désormais : ","color":"gray"},{"text":"[DISPO]","color":"green","bold":true}]
