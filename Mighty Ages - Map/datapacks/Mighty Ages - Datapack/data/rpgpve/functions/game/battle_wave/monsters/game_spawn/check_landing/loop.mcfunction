#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
scoreboard players remove #Reach Temp 1
execute unless block ~ ~ ~ #rpgpve:particle_pass_through run scoreboard players reset #Reach Temp
execute unless block ~ ~ ~ #rpgpve:particle_pass_through run scoreboard players set #Success Temp -1
execute if score #Reach Temp matches 1.. positioned ~ ~-1 ~ run function rpgpve:game/battle_wave/monsters/game_spawn/check_landing/loop
execute unless score #Reach Temp matches 1.. unless score #Success Temp matches -1 run scoreboard players set #Success Temp 1
#----------------------------------------#
