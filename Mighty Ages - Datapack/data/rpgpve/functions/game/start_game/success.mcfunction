#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------START GAME---------------#
scoreboard players reset @s ForceRPGPVEGameStart
execute unless score #GameHosted Dummy matches 1 run playsound entity.villager.no master @s ~ ~ ~ 1 0.5 0
execute unless score #GameHosted Dummy matches 1 run tellraw @s ["",{"text":"[","color":"gray"},{"text":"Mighty Ages","color":"red","bold":true},{"text":"] ","color":"gray"},{"text":"No one is hosting a game!"}]
execute unless score #GameHosted Dummy matches 1 run return 0

scoreboard players set #GiveCooldown Dummy 200
tellraw @a[tag=IsInRPGPVELobby] ["",{"text":"[","color":"gray"},{"text":"Mighty Ages","color":"red","bold":true},{"text":"] ","color":"gray"},{"selector":"@s","color":"red"},{"text":" started the game! It will start in 10 seconds!"}]
scoreboard players set #StartCooldown Dummy 20
scoreboard players set #CooldownSeconds Dummy 10
clear @a[tag=IsInRPGPVELobby]
#----------------------------------------#
