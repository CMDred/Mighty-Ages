#------------------SETUP-------------------#
tag @s add GivingStats
execute on origin if entity @s[type=player] as @e[type=#minecraft:arrows,tag=GivingStats,distance=..1,sort=nearest,limit=1] run function rpgpve:stats/arrow/player_stats
execute on origin if entity @s[type=!player] as @e[type=#minecraft:arrows,tag=GivingStats,distance=..1,sort=nearest,limit=1] run function rpgpve:stats/arrow/mob_stats
tag @s remove GivingStats
#------------------------------------------#