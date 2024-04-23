#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#------------CREATE INSTANCE-------------#
playsound block.note_block.bass master @s ~ ~ ~ 1 0 1 
tellraw @s ["",{"text":"[","color":"gray"},{"text":"Mighty Ages","color":"red","bold":true},{"text":"] ","color":"gray"},{"selector":"@s","color":"red"},{"text":", someone else is already hosting a game! Please wait!"}]
#----------------------------------------#
