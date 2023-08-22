#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
tag @s remove NeedsCheck
# Don't spawn on top wooden pathway in caves
execute if score #CurrentBattleWave Temp matches 30..39 store result score #X Temp run data get entity @s Pos[0]
execute if score #CurrentBattleWave Temp matches 30..39 if score #X Temp matches -19995..-19991 run function rpgpve:game/battle_wave/monsters/game_spawn/check_spread

# Don't spawn above void in end
execute if score #CurrentBattleWave Temp matches 40..49 run function rpgpve:game/battle_wave/monsters/game_spawn/check_landing/start
execute if score #CurrentBattleWave Temp matches 40..49 if score #Success Temp matches 1 run function rpgpve:game/battle_wave/monsters/game_spawn/check_spread
#----------------------------------------#
