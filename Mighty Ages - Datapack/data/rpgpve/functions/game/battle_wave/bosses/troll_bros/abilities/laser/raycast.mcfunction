#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
scoreboard players remove #Reach Dummy 1
particle dust{color:[0.8d,0d,0d],scale:0.85} ~ ~ ~ 0 0 0 .1 2 normal
execute as @p[tag=IsInRPGPVEGame,tag=!Eliminated,distance=..3] run function rpgpve:game/battle_wave/bosses/troll_bros/abilities/laser/hit
execute if score #Reach Dummy matches 1.. positioned ^ ^ ^.2 if block ~ ~ ~ #rpgpve:allowed run function rpgpve:game/battle_wave/bosses/troll_bros/abilities/laser/raycast
#----------------------------------------#
