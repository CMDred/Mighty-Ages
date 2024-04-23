#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
scoreboard players set #FinalDamage Dummy 220
scoreboard players set @s DamageType 101 
damage @s 0.001 rpgpve:manual_damage
function rpgpve:stats/damage/manual_damage_check
scoreboard players reset @s DamageType
#----------------------------------------#
