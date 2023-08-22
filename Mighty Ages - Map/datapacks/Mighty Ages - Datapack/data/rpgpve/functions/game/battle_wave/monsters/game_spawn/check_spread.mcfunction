#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
function rpgpve:game/battle_wave/monsters/game_spawn/spread_particle

tag @s add NeedsCheck
schedule function rpgpve:game/battle_wave/monsters/game_spawn/check_spread_sched 1t
#----------------------------------------#
