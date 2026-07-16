tag @s remove role_afk
tag @s remove role_dispo
tag @s add role_occupe

# Gestion de l'équipe visuelle
team join team_occupe @s

# On retire la protection anti-poussée (plus utile hors AFK)
attribute @s minecraft:knockback_resistance base set 0

# Annonce à tout le monde
tellraw @a [{"selector":"@s"},{"text":" est désormais : ","color":"gray"},{"text":"[OCCUPÉ]","color":"red","bold":true}]
