#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
scoreboard players remove #Reach Temp 1
particle dust 0 1 0 1 ~ ~ ~ 0 0 0 0.001 1 force
execute if entity @e[type=zombie,tag=GiantController,distance=..3] run scoreboard players reset #Reach Temp
execute if score #Reach Temp matches 1.. positioned ^ ^ ^.2 run function rpgpve:game/battle_wave/bosses/troll_bros/abilities/crystal/raycast
#----------------------------------------#
