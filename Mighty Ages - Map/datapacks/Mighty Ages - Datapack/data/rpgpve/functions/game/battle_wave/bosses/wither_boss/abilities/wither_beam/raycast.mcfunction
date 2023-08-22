#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
scoreboard players remove #Reach Temp 1

particle dust 0.965 0.631 0.965 1 ~ ~ ~ 0.5 0.5 0.5 0.001 8 force 

execute as @a[tag=IsInRPGPVEGame,tag=!Eliminated,distance=..2] run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/wither_beam/hit

execute if block ~ ~ ~ #rpgpve:allowed positioned ^ ^ ^0.5 if score #Reach Temp matches 1.. run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/wither_beam/raycast
#----------------------------------------#
