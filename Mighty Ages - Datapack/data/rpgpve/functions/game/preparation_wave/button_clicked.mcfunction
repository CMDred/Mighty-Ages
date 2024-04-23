#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------GAME MAIN----------------#
scoreboard players set #RPGPVEGameState Dummy 2
function rpgpve:game/start_state
execute if score #CurrentBattleWave Dummy matches 0..9 run setblock 3 31 -11 air
execute if score #CurrentBattleWave Dummy matches 10..19 run setblock -9998 31 -12 air
execute if score #CurrentBattleWave Dummy matches 20..29 run setblock -14997 25 -10 air
execute if score #CurrentBattleWave Dummy matches 30..39 run setblock -19994 7 -26 air
execute if score #CurrentBattleWave Dummy matches 40..49 run setblock -4 44 -7 air

particle witch 0 30 0 0.02 0.02 0.02 1 10 normal
particle lava 0 30 0 0.01 0.01 0.01 0.05 2 normal
#----------------------------------------#
