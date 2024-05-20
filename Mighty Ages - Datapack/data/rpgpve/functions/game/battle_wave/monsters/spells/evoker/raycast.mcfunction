#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
scoreboard players remove #Reach Dummy 1 
particle falling_dust{block_state:{Name:"minecraft:stone"}} ~ ~ ~ 0.2 0.2 0.2 0.01 4 force
particle dripping_honey ~ ~ ~ 0 0 0 0.1 1 force
execute unless block ~ ~ ~ #rpgpve:allowed run scoreboard players reset #Reach Dummy
execute positioned ~ ~-1 ~ as @a[tag=IsInRPGPVEGame,gamemode=adventure,distance=..0.9] run function rpgpve:game/battle_wave/monsters/spells/evoker/damage 
execute if score #Reach Dummy matches 1.. positioned ^ ^ ^0.2 run function rpgpve:game/battle_wave/monsters/spells/evoker/raycast
#----------------------------------------#
