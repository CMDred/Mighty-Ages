#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#---------------START GAME---------------#
gamerule fallDamage false
scoreboard players set #RPGPVEGameState Temp 1
tag @a[tag=IsInRPGPVELobby] add IsInRPGPVEGame
execute as @a[tag=IsInRPGPVELobby] at @s run function rpgpve:game/start_game/player_start
tag @a remove IsInRPGPVELobby
schedule function rpgpve:game/start_game/teleport_delayed 1s
#----------------------------------------#
