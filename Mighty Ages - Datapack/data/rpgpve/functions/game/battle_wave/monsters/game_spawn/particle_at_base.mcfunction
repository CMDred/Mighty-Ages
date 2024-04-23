#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
data modify storage rpgpve:waves Mob.Name set from entity @s data.MobName
function rpgpve:game/battle_wave/monsters/game_spawn/height_check/start
kill @s
#----------------------------------------#
