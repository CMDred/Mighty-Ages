#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
scoreboard players remove #Reach Temp 1
particle dust 0.8 0 0 0.85 ~ ~ ~ 0 0 0 .1 2 normal
execute as @p[tag=IsInRPGPVEGame,tag=!Eliminated,distance=..3] run function rpgpve:game/battle_wave/bosses/troll_bros/abilities/laser/hit
execute if score #Reach Temp matches 1.. positioned ^ ^ ^.2 if block ~ ~ ~ #rpgpve:allowed run function rpgpve:game/battle_wave/bosses/troll_bros/abilities/laser/raycast
#----------------------------------------#
