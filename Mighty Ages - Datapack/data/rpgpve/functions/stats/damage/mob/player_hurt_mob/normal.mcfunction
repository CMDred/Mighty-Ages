#-------------PLAYER HIT MOB---------------#
tag @s add Attacker
scoreboard players set #FoundMob Dummy 0
execute as @e[type=#rpgpve:has_health_bar,tag=!Invincible,sort=nearest] unless score #FoundMob Dummy matches 1 if predicate rpgpve:stats/hurt_time_10 run function rpgpve:stats/damage/mob/check_attacker
advancement revoke @s only rpgpve:stats/player_hurt_entity/player_damaged_mob
tag @s remove Attacker
#------------------------------------------#
