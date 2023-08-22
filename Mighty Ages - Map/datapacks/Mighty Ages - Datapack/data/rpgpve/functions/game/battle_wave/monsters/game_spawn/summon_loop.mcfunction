#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
function rpgpve:game/battle_wave/monsters/game_spawn/summon_particle
scoreboard players remove #ThisMobAmount Temp 1
execute if score #ThisMobAmount Temp matches 1.. run function rpgpve:game/battle_wave/monsters/game_spawn/summon_loop
#----------------------------------------#
