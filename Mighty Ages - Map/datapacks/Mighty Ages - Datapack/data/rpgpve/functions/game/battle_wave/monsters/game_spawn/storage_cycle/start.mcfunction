#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
execute store result score #AmountOfIterations Temp run data get storage rpgpve:waves CurrentWave
execute unless data storage rpgpve:waves {CurrentWave:"Boss"} if score #AmountOfIterations Temp matches 1.. run tellraw @a[tag=IsInRPGPVEGame] ["",{"text":"\n Mobs of this Wave : \n","color":"red","underlined": true,"bold": true}]
execute unless data storage rpgpve:waves {CurrentWave:"Boss"} if score #AmountOfIterations Temp matches 1.. run function rpgpve:game/battle_wave/monsters/game_spawn/storage_cycle/cycle
#----------------------------------------#
