#---------------PROJECTILES----------------#
scoreboard players set #UsedProjectile Temp 1
#-------------PLAYER HIT MOB---------------#
tag @s add Attacker
scoreboard players set #FoundMob Temp 0
execute as @e[type=#rpgpve:has_health_bar,tag=!Invincible] unless score #FoundMob Temp matches 1 if predicate rpgpve:stats/hurt_time_10 run function rpgpve:stats/damage/mob/check_attacker
advancement revoke @s only rpgpve:stats/player_hurt_entity/player_damaged_mob_with_projectile
scoreboard players set #UsedProjectile Temp 0
tag @s remove Attacker
#------------------------------------------#
