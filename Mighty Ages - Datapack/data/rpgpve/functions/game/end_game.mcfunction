#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#------------CREATE INSTANCE-------------#
kill @e[type=#rpgpve:has_health_bar,tag=RPGPVEMob]
scoreboard players set #RPGPVEGameState Dummy 0
gamemode adventure @a[tag=IsInRPGPVEGame]
execute in minecraft:overworld positioned 0 82 0 run spawnpoint @a[tag=IsInRPGPVEGame] ~ ~ ~
execute as @a[tag=IsInRPGPVEGame] run function rpgpve:game/player_reset
execute in minecraft:overworld run tp @a[tag=IsInRPGPVEGame] 0 82 0
tag @a remove HostingRPGPVE
tag @a remove IsInRPGPVEGame
team empty red
team empty blue
scoreboard players reset #GameHosted Dummy
kill @e[type=item]
#----------------------------------------#
