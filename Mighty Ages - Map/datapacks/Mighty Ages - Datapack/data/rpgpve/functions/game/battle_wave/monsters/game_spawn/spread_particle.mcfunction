#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
execute in the_end run fill 40 70 40 -40 70 -40 barrier replace air

execute if score #CurrentBattleWave Temp matches 0..9 run spreadplayers 0 0 1 20 false @s
execute if score #CurrentBattleWave Temp matches 10..19 run spreadplayers -10000 0 1 20 false @s
execute if score #CurrentBattleWave Temp matches 20..29 run spreadplayers -15000 0 1 20 false @s
execute if score #CurrentBattleWave Temp matches 30..39 run spreadplayers -20000 0 1 20 under 8 false @s
execute if score #CurrentBattleWave Temp matches 40..49 in the_end run spreadplayers 0 0 1 25 under 75 false @s

execute in the_end run fill 40 70 40 -40 70 -40 air replace barrier
#----------------------------------------#
