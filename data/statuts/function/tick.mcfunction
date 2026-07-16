# 1. On active les triggers globalement pour tous les joueurs à chaque tick
scoreboard players enable @a trig_statut
scoreboard players enable @a trig_menu

# 2. On traite les changements de statuts selon la valeur choisie
execute as @a[scores={trig_statut=1}] run function statuts:afk
execute as @a[scores={trig_statut=2}] run function statuts:occupe
execute as @a[scores={trig_statut=3}] run function statuts:dispo
execute as @a[scores={trig_statut=4}] run function statuts:reset

# 3. On remet immédiatement le trigger à 0 pour ceux qui ont cliqué
scoreboard players set @a[scores={trig_statut=1..}] trig_statut 0

# 4. Ouverture du menu par les joueurs eux-mêmes (commande vanilla : /trigger trig_menu set 1)
execute as @a[scores={trig_menu=1}] run function statuts:menu
scoreboard players set @a[scores={trig_menu=1..}] trig_menu 0

# 5. Détection automatique d'inactivité (AFK)
function statuts:afk_check
