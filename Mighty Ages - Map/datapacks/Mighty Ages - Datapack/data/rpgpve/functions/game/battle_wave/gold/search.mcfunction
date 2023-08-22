#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------GOLD-------------------#

execute store result score #PlayerUUID0 Temp run data get entity @s UUID[0]
execute store result score #PlayerUUID1 Temp run data get entity @s UUID[1]
execute store result score #PlayerUUID2 Temp run data get entity @s UUID[2]
execute store result score #PlayerUUID3 Temp run data get entity @s UUID[3]

execute if score #PlayerUUID0 Temp = #SearchUUID0 Temp if score #PlayerUUID1 Temp = #SearchUUID1 Temp if score #PlayerUUID2 Temp = #SearchUUID2 Temp if score #PlayerUUID3 Temp = #SearchUUID3 Temp run tag @s add PlayerWhoDropped

execute if entity @s[tag=PlayerWhoDropped,scores={GoldTelekinesis=1..}] run function rpgpve:game/battle_wave/gold/give_to_player

tag @a remove PlayerWhoDropped
#----------------------------------------#
