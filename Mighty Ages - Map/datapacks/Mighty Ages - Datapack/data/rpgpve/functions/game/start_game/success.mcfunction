#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------START GAME---------------#
scoreboard players set #GiveCooldown Temp 200
tellraw @a[tag=IsInRPGPVELobby] ["",{"text":"[","color":"gray"},{"text":"Mighty Ages","color":"red","bold":true},{"text":"] ","color":"gray"},{"selector":"@s","color":"red"},{"text":" started the game! It will start in 10 seconds!"}]
scoreboard players set #StartCooldown Temp 20
scoreboard players set #CooldownSeconds Temp 10
clear @a[tag=IsInRPGPVELobby]
scoreboard players reset @s ForceRPGPVEGameStart
#----------------------------------------#
