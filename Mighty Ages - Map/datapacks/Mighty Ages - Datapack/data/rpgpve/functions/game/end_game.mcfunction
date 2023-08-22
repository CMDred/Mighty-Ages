#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#------------CREATE INSTANCE-------------#
scoreboard players set #RPGPVEGameState Temp 0
gamemode adventure @a[tag=IsInRPGPVEGame]
execute in minecraft:overworld positioned 0 82 0 run spawnpoint @a[tag=IsInRPGPVEGame] ~ ~ ~
execute as @a[tag=IsInRPGPVEGame] run function rpgpve:game/player_reset
clear @a[tag=IsInRPGPVEGame]
execute in minecraft:overworld run tp @a[tag=IsInRPGPVEGame] 0 82 0
tag @a remove HostingRPGPVE
tag @a remove IsInRPGPVEGame
team empty red
team empty blue
#----------------------------------------#
