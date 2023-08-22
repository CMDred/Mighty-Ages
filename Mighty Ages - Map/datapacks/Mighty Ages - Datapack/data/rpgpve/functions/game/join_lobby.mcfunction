#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#--------------TP TO LOBBY---------------#
playsound block.note_block.pling record @s ~ ~ ~ 1 2 1 
tag @s add IsInRPGPVELobby
tellraw @s ["",{"text":"[","color":"gray"},{"text":"Mighty Ages","color":"red","bold":true},{"text":"] ","color":"gray"},{"text":"Teleported to the lobby!"}]
gamemode adventure @s
scoreboard players reset @s JoinRPGPVELobby
scoreboard players enable @s JoinRPGPVELobby
execute in overworld run tp @s 4 81 -30 10 0
#----------------------------------------#
