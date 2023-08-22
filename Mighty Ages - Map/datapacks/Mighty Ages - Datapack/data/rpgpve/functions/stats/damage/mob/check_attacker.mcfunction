#--------------CHECK ATTACKER---------------#
execute on attacker if entity @s[tag=Attacker] run scoreboard players set #FoundMob Temp 1
execute if score #FoundMob Temp matches 1 at @s run function rpgpve:stats/damage/mob/damaged
#------------------------------------------#
