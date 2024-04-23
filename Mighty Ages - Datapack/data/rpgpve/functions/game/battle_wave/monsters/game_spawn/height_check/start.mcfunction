#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
scoreboard players set #Reach Dummy 40
execute if score #CurrentBattleWave Dummy matches 31..39 run scoreboard players set #Reach Dummy 60
function rpgpve:game/battle_wave/monsters/game_spawn/height_check/loop
#----------------------------------------#
