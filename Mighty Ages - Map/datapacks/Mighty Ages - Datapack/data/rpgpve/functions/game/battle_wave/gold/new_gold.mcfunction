#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------GOLD-------------------#
tag @s add ThisItem
execute store result score #SearchUUID0 Temp run data get entity @s Item.tag.KillerUUID[0]
execute store result score #SearchUUID1 Temp run data get entity @s Item.tag.KillerUUID[1]
execute store result score #SearchUUID2 Temp run data get entity @s Item.tag.KillerUUID[2]
execute store result score #SearchUUID3 Temp run data get entity @s Item.tag.KillerUUID[3]

execute as @a[tag=IsInRPGPVEGame] run function rpgpve:game/battle_wave/gold/search
tag @e remove ThisItem
#----------------------------------------#
