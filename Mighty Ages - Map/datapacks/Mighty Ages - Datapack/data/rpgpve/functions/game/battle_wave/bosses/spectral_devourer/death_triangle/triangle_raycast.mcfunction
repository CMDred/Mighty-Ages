#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
scoreboard players remove #Reach Temp 1 
particle dust 0.514 0 0.463 3 ~ ~ ~ 0.08 0.08 0.08 0.1 1 force
particle dust 0 0 0 3 ~ ~ ~ 0.08 0.08 0.08 1 1 force

execute if entity @e[type=marker,tag=TrianglePoint,tag=Target,distance=..0.4] run scoreboard players set #Reach Temp -1
execute if score #Reach Temp matches 1.. positioned ^ ^ ^0.9 run function rpgpve:game/battle_wave/bosses/spectral_devourer/death_triangle/triangle_raycast
#----------------------------------------#
