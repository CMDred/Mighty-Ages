#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
scoreboard players reset #Reach Temp

scoreboard players operation #FinalDamage Temp = #Damage Temp
scoreboard players set @s DamageType 102
damage @s 0.001 rpgpve:manual_damage by @e[type=phantom,tag=Boss,limit=1]
execute if score #ManualDamageHappened Temp matches 1 run function rpgpve:stats/damage/manual_damage_check
scoreboard players reset @s DamageType
scoreboard players reset #ManualDamageHappened Temp
#----------------------------------------#
