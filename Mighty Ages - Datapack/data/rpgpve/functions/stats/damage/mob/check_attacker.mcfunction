#--------------CHECK ATTACKER---------------#
execute on attacker if entity @s[tag=Attacker] run scoreboard players set #FoundMob Dummy 1
execute if score #FoundMob Dummy matches 1 at @s run function rpgpve:stats/damage/mob/damaged
#------------------------------------------#
