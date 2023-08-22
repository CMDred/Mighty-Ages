#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
data modify storage rpgpve:inventory Inventory set from entity @s Inventory
execute store result score #AmountOfIterations Temp run data get storage rpgpve:inventory Inventory
execute if score #AmountOfIterations Temp matches 1.. run function rpgpve:game/arrows/find_arrow/cycle
#----------------------------------------#
