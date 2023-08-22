#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
execute store result score @s ArrowDamage run data get storage rpgpve:inventory This.tag.RPG.Damage
execute store result score @s HasCustomArrow run data get storage rpgpve:inventory This.tag.RPG.ArrowID
scoreboard players set #AmountOfIterations Temp 0
#----------------------------------------#
