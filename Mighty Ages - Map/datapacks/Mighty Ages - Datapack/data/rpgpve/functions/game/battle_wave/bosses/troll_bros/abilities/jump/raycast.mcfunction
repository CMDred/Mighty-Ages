#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
scoreboard players remove #Reach Temp 1
scoreboard players add #MotSpeed Temp 50
execute if entity @a[tag=IsInRPGPVEGame,tag=!Eliminated,distance=..1.5] run scoreboard players reset #Reach Temp
execute if score #Reach Temp matches 1.. positioned ^ ^ ^.2 run function rpgpve:game/battle_wave/bosses/troll_bros/abilities/jump/raycast
#----------------------------------------#
