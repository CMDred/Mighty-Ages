#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#------------CREATE INSTANCE-------------#
tag @s add HostingRPGPVE
scoreboard players set #GameHosted Dummy 1
execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 0 1 
tellraw @a ["",{"text":"[","color":"gray"},{"text":"Mighty Ages","color":"red","bold":true},{"text":"] ","color":"gray"},{"selector":"@s","color":"red"},{"text":" is starting a game! Click"},{"text":" [HERE] ","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger JoinRPGPVELobby"}},{"text":"to join the lobby."}]
#----------------------------------------#
