#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#--------------TP TO LOBBY---------------#
scoreboard players reset @s JoinRPGPVELobby
execute unless score #GameHosted Dummy matches 1 run playsound entity.villager.no master @s ~ ~ ~ 1 0.5 0
execute unless score #GameHosted Dummy matches 1 run tellraw @s ["",{"text":"[","color":"gray"},{"text":"Mighty Ages","color":"red","bold":true},{"text":"] ","color":"gray"},{"text":"No one is hosting a game!"}]
execute unless score #GameHosted Dummy matches 1 run return 0

playsound block.note_block.pling record @s ~ ~ ~ 1 2 1 
tag @s add IsInRPGPVELobby
tellraw @s ["",{"text":"[","color":"gray"},{"text":"Mighty Ages","color":"red","bold":true},{"text":"] ","color":"gray"},{"text":"Teleported to the lobby!"}]
gamemode adventure @s
execute in overworld run tp @s 4 81 -30 10 0
#----------------------------------------#
