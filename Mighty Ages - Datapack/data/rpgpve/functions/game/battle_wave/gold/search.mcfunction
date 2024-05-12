#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------GOLD-------------------#

execute store result score #PlayerUUID0 Dummy run data get entity @s UUID[0]
execute store result score #PlayerUUID1 Dummy run data get entity @s UUID[1]
execute store result score #PlayerUUID2 Dummy run data get entity @s UUID[2]
execute store result score #PlayerUUID3 Dummy run data get entity @s UUID[3]

execute if score #PlayerUUID0 Dummy = #SearchUUID0 Dummy if score #PlayerUUID1 Dummy = #SearchUUID1 Dummy if score #PlayerUUID2 Dummy = #SearchUUID2 Dummy if score #PlayerUUID3 Dummy = #SearchUUID3 Dummy run tag @s add PlayerWhoDropped

execute if entity @s[tag=PlayerWhoDropped,scores={HasGoldTelekinesis=1..}] run function rpgpve:game/battle_wave/gold/give_to_player

tag @a remove PlayerWhoDropped
#----------------------------------------#
