#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#------------CREATE INSTANCE-------------#
execute as @a at @s run playsound block.note_block.bass master @a ~ ~ ~ 1 0 1 
tellraw @a ["",{"text":"[","color":"gray"},{"text":"Mighty Ages","color":"red","bold":true},{"text":"] ","color":"gray"},{"selector":"@s","color":"red"},{"text":" cancelled a game host!"}]
tag @s remove HostingRPGPVE
#----------------------------------------#
