#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
scoreboard players remove #Reach Dummy 1
execute unless score #Reach Dummy matches 1.. run function rpgpve:game/battle_wave/monsters/game_spawn/summon_particle
execute unless block ~ ~ ~ #rpgpve:particle_pass_through positioned ~ ~-1 ~ run function rpgpve:game/battle_wave/monsters/game_spawn/summon_particle
execute if score #Reach Dummy matches 1.. positioned ~ ~1 ~ run function rpgpve:game/battle_wave/monsters/game_spawn/height_check/loop
#----------------------------------------#
