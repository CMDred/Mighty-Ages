#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
scoreboard players remove #Reach Temp 1 
particle falling_dust stone ~ ~ ~ 0.2 0.2 0.2 0.01 4 force
particle dripping_honey ~ ~ ~ 0 0 0 0.1 1 force
execute positioned ~ ~-1 ~ as @a[tag=IsInRPGPVEGame,gamemode=adventure,distance=..0.9] run function rpgpve:game/battle_wave/monsters/spells/evoker/damage 
execute if score #Reach Temp matches 1.. positioned ^ ^ ^0.2 run function rpgpve:game/battle_wave/monsters/spells/evoker/raycast
#----------------------------------------#
