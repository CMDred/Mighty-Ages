#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------DIFFICULTY---------------#
tellraw @a[tag=IsInRPGPVEGame,tag=Eliminated] ["",{"text":"HARD","color":"red","bold":true},{"text":" Difficulty","color":"yellow"},{"text":">> You died! You will not be able to be revived for the rest of the game! Pray for "},{"selector":"@a[tag=IsInRPGPVEGame,tag=!Eliminated]","color":"gold","bold":true},{"text":"!"}]
tellraw @a[tag=IsInRPGPVEGame,tag=!Eliminated] ["",{"text":"HARD","color":"red","bold":true},{"text":" Difficulty","color":"yellow"},{"text":">> "},{"selector":"@a[tag=Eliminated]","color":"gold","bold":true},{"text":" has died! You are now on your own for the rest of the game!"}]
#----------------------------------------#
