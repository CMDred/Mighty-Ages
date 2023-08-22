#-------------PLAYER HIT MOB---------------#
tag @s add Attacker
scoreboard players set #WasCrit Temp 1
scoreboard players set #FoundMob Temp 0
execute as @e[type=#rpgpve:has_health_bar,tag=!Invincible,sort=nearest] unless score #FoundMob Temp matches 1 if predicate rpgpve:stats/hurt_time_10 run function rpgpve:stats/damage/mob/check_attacker
advancement revoke @s only rpgpve:stats/player_hurt_entity/player_crit_mob
scoreboard players reset #WasCrit Temp
tag @s remove Attacker
#------------------------------------------#
