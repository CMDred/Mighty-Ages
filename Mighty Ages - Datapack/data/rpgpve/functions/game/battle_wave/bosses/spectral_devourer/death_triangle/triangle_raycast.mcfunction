#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
scoreboard players remove #Reach Dummy 1 
particle dust{color:[0.514d,0d,0.463d],scale:3} ~ ~ ~ 0.08 0.08 0.08 0.1 1 force
particle dust{color:[0d,0d,0d],scale:3} ~ ~ ~ 0.08 0.08 0.08 1 1 force

execute if entity @e[type=marker,tag=TrianglePoint,tag=Target,distance=..0.4,limit=1] run scoreboard players set #Reach Dummy -1
execute if score #Reach Dummy matches 1.. positioned ^ ^ ^0.9 run function rpgpve:game/battle_wave/bosses/spectral_devourer/death_triangle/triangle_raycast
#----------------------------------------#
