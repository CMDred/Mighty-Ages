#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
summon marker ~ ~ ~ {Tags:["MonsterSpawnParticle","NewMonsterSpawnParticle"]}
execute as @e[type=marker,tag=NewMonsterSpawnParticle] at @s run function rpgpve:game/battle_wave/monsters/game_spawn/new_particle
#----------------------------------------#
