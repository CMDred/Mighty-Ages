#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
execute store result score @s ArrowDamage run data get storage rpgpve:inventory This.components."minecraft:custom_data".RPG.Damage
execute store result score @s HasCustomArrow run data get storage rpgpve:inventory This.components."minecraft:custom_data".RPG.ArrowID
scoreboard players set #AmountOfIterations Dummy 0
#----------------------------------------#
