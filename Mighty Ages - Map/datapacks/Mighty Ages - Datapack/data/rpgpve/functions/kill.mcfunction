#----------------RESETTING-----------------#
#Prevent endermen from dropping end portal or e chest
execute as @e[type=enderman,tag=NeedKill] run data merge entity @s {carriedBlockState:{Name:"minecraft:air"}}
kill @e[type=#rpgpve:has_health_bar,tag=NeedKill]
#------------------------------------------#