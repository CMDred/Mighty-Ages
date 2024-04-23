#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
scoreboard players remove #Reach Dummy 1 

particle end_rod ~ ~ ~ 0.2 0.2 0.2 0.01 4 force
particle dragon_breath ~ ~ ~ 0 0 0 0.1 1 force

execute as @a[tag=IsInRPGPVEGame,tag=!Eliminated,distance=..1.8] run function rpgpve:game/battle_wave/monsters/spells/endermancer/damage 
execute if score #Reach Dummy matches 1.. if block ~ ~ ~ #rpgpve:allowed positioned ^ ^ ^0.2 run function rpgpve:game/battle_wave/monsters/spells/endermancer/raycast
#----------------------------------------#
