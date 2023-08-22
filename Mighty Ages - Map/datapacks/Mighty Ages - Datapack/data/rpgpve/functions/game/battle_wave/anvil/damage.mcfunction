#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------GAME MAIN----------------#
scoreboard players set #FinalDamage Temp 25
scoreboard players set @s DamageType 102
damage @s 0.001 rpgpve:manual_damage
function rpgpve:stats/damage/manual_damage_check
scoreboard players reset @s DamageType
#----------------------------------------#
