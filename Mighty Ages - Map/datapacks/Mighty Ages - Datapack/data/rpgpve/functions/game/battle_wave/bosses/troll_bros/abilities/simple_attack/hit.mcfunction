#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
scoreboard players operation #FinalDamage Temp = @e[type=giant,tag=Attacker,distance=..10,limit=1] BasePhysicDamage

scoreboard players set @s DamageType 101
damage @s 0.001 rpgpve:manual_damage by @e[type=giant,tag=Attacker,distance=..10,limit=1]
function rpgpve:stats/damage/manual_damage_check
scoreboard players reset @s DamageType
#----------------------------------------#
