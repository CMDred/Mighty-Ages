#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------START GAME---------------#
execute store result score #PlayersAmount Temp if entity @a[tag=IsInRPGPVELobby]
execute if score #PlayersAmount Temp matches 1 run function rpgpve:game/start_game/fail
execute if score #PlayersAmount Temp matches 3.. run function rpgpve:game/start_game/fail
execute if score #PlayersAmount Temp matches 2 run function rpgpve:game/start_game/success
scoreboard players reset @s StartRPGPVEGame
#----------------------------------------#
