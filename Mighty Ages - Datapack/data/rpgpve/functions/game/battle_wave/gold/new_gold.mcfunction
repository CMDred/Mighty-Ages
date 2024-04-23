#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------GOLD-------------------#
tag @s add ThisItem
execute store result score #SearchUUID0 Dummy run data get entity @s Item.components."minecraft:custom_data".KillerUUID[0]
execute store result score #SearchUUID1 Dummy run data get entity @s Item.components."minecraft:custom_data".KillerUUID[1]
execute store result score #SearchUUID2 Dummy run data get entity @s Item.components."minecraft:custom_data".KillerUUID[2]
execute store result score #SearchUUID3 Dummy run data get entity @s Item.components."minecraft:custom_data".KillerUUID[3]

execute as @a[tag=IsInRPGPVEGame] run function rpgpve:game/battle_wave/gold/search
tag @e remove ThisItem

data modify entity @s Item.components."minecraft:custom_model_data" set from entity @s Item.components."minecraft:custom_data".CustomModelData
#----------------------------------------#
