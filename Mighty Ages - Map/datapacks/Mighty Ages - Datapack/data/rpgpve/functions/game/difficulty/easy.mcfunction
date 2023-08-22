#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------DIFFICULTY---------------#
tellraw @a[tag=IsInRPGPVEGame,tag=Eliminated] ["",{"text":"EASY","color":"green","bold":true},{"text":" Difficulty","color":"yellow"},{"text":" >> You were revived. "}]
tellraw @a[tag=IsInRPGPVEGame,tag=!Eliminated] ["",{"text":"EASY","color":"green","bold":true},{"text":" Difficulty","color":"yellow"},{"text":" >> Your teammate "},{"selector":"@a[tag=Eliminated]","color":"gold"},{"text":" was revived."}]
execute as @a[tag=Eliminated] at @s run function rpgpve:game/revive
#----------------------------------------#
