#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
scoreboard players set #Reach Temp 40
execute if score #CurrentBattleWave Temp matches 31..39 run scoreboard players set #Reach Temp 60
function rpgpve:game/battle_wave/monsters/game_spawn/height_check/loop
#----------------------------------------#
