#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
scoreboard players remove #Reach Dummy 1 
particle flash ~ ~ ~ 0.1 0.1 0.1 0.01 5 force
particle witch ~ ~ ~ 0.1 0.1 0.1 0.01 4 force
execute as @a[tag=TriangleTarget,distance=..2] run function rpgpve:game/battle_wave/bosses/spectral_devourer/death_triangle/player_damage
execute if score #Reach Dummy matches 1.. positioned ^ ^ ^0.5 if block ~ ~ ~ #rpgpve:allowed run function rpgpve:game/battle_wave/bosses/spectral_devourer/death_triangle/damage_raycast
#----------------------------------------#
