# Réinitialise le timer d'inactivité
scoreboard players set @s afk_timer 0

# Si le joueur était en AFK, on le repasse en DISPO automatiquement
execute if entity @s[tag=role_afk] run function statuts:dispo
