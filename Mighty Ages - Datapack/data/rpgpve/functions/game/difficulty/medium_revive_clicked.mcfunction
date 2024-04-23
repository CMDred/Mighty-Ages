#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------DIFFICULTY---------------#
scoreboard players set @a[tag=IsInRPGPVEGame] TotalGold 0
execute if score SharedPurse GameSettings matches 1.. run scoreboard players set #SharedPurse Dummy 0
tellraw @s ["",{"text":"MEDIUM","color":"gold","bold":true},{"text":" Difficulty","color":"yellow"},{"text":">> Your teammate "},{"selector":"@a[tag=Eliminated]","color":"gold"},{"text":" was revived."}]
tellraw @a[tag=IsInRPGPVEGame,tag=Eliminated] ["",{"text":"MEDIUM","color":"gold","bold":true},{"text":" Difficulty","color":"yellow"},{"text":">> You were revived. "}]
execute as @a[tag=Eliminated] at @s run function rpgpve:game/revive
#----------------------------------------#
