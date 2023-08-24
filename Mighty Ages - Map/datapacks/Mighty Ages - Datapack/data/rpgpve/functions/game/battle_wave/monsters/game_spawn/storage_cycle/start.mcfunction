#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
execute store result score #AmountOfIterations Temp run data get storage rpgpve:waves CurrentWave
execute if score #AmountOfIterations Temp matches 1.. run tellraw @a[tag=IsInRPGPVEGame] ["",{"text":"\n Wave's Monsters : \n","color":"red","underlined": true,"bold": true}]
execute if score #AmountOfIterations Temp matches 1.. run function rpgpve:game/battle_wave/monsters/game_spawn/storage_cycle/cycle
#----------------------------------------#
