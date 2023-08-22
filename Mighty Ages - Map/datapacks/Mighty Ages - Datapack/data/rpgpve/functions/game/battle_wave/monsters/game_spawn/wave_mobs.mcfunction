#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
# Put barrier ceiling for spreadplayers
execute in rpgpve:rpgpve_game run fill -50 70 -50 50 70 50 barrier
execute in rpgpve:rpgpve_game run fill -19970 7 33 -20026 3 -21 barrier replace air
execute in the_end run fill 40 70 40 -40 70 -40 barrier replace air

# Get Current wave data
execute if score #CurrentBattleWave Temp matches 1 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave1
execute if score #CurrentBattleWave Temp matches 2 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave2
execute if score #CurrentBattleWave Temp matches 3 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave3
execute if score #CurrentBattleWave Temp matches 4 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave4
execute if score #CurrentBattleWave Temp matches 5 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave5
execute if score #CurrentBattleWave Temp matches 6 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave6
execute if score #CurrentBattleWave Temp matches 7 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave7
execute if score #CurrentBattleWave Temp matches 8 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave8
execute if score #CurrentBattleWave Temp matches 9 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave9
execute if score #CurrentBattleWave Temp matches 10 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave10
execute if score #CurrentBattleWave Temp matches 11 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave11
execute if score #CurrentBattleWave Temp matches 12 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave12
execute if score #CurrentBattleWave Temp matches 13 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave13
execute if score #CurrentBattleWave Temp matches 14 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave14
execute if score #CurrentBattleWave Temp matches 15 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave15
execute if score #CurrentBattleWave Temp matches 16 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave16
execute if score #CurrentBattleWave Temp matches 17 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave17
execute if score #CurrentBattleWave Temp matches 18 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave18
execute if score #CurrentBattleWave Temp matches 19 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave19
execute if score #CurrentBattleWave Temp matches 20 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave20
execute if score #CurrentBattleWave Temp matches 21 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave21
execute if score #CurrentBattleWave Temp matches 22 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave22
execute if score #CurrentBattleWave Temp matches 23 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave23
execute if score #CurrentBattleWave Temp matches 24 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave24
execute if score #CurrentBattleWave Temp matches 25 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave25
execute if score #CurrentBattleWave Temp matches 26 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave26
execute if score #CurrentBattleWave Temp matches 27 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave27
execute if score #CurrentBattleWave Temp matches 28 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave28
execute if score #CurrentBattleWave Temp matches 29 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave29
execute if score #CurrentBattleWave Temp matches 30 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave30
execute if score #CurrentBattleWave Temp matches 31 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave31
execute if score #CurrentBattleWave Temp matches 32 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave32
execute if score #CurrentBattleWave Temp matches 33 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave33
execute if score #CurrentBattleWave Temp matches 34 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave34
execute if score #CurrentBattleWave Temp matches 35 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave35
execute if score #CurrentBattleWave Temp matches 36 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave36
execute if score #CurrentBattleWave Temp matches 37 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave37
execute if score #CurrentBattleWave Temp matches 38 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave38
execute if score #CurrentBattleWave Temp matches 39 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave39
execute if score #CurrentBattleWave Temp matches 40 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave40
execute if score #CurrentBattleWave Temp matches 41 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave41
execute if score #CurrentBattleWave Temp matches 42 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave42
execute if score #CurrentBattleWave Temp matches 43 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave43
execute if score #CurrentBattleWave Temp matches 44 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave44
execute if score #CurrentBattleWave Temp matches 45 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave45
execute if score #CurrentBattleWave Temp matches 46 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave46
execute if score #CurrentBattleWave Temp matches 47 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave47
execute if score #CurrentBattleWave Temp matches 48 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave48
execute if score #CurrentBattleWave Temp matches 49 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave49
execute if score #CurrentBattleWave Temp matches 50 run data modify storage rpgpve:waves CurrentWave set from storage rpgpve:waves Waves.Wave50

# Cycle
function rpgpve:game/battle_wave/monsters/game_spawn/storage_cycle/start

# Put air back
execute in rpgpve:rpgpve_game run fill -50 70 -50 50 70 50 air
execute in rpgpve:rpgpve_game run fill -19970 7 33 -20026 3 -21 air replace barrier
execute in the_end run fill 40 70 40 -40 70 -40 air replace barrier
#----------------------------------------#
