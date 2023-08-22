#========================================#
#          Made by TheCarotte            #
#        Don't claim as own work         #
#========================================#
#----------------RPG PVE-----------------#
scoreboard players reset #MusicLoop Temp
execute unless score #RPGPVEGameState Temp matches -2147483648..2147483647 run say GAME STATE ERROR : STATE IS EITHER UNSET, 0 OR LESS, OR MORE THAN 3
execute if score #RPGPVEGameState Temp matches ..0 run say GAME STATE ERROR : STATE IS EITHER UNSET, 0 OR LESS, OR MORE THAN 3
execute if score #RPGPVEGameState Temp matches 4.. run say GAME STATE ERROR : STATE IS EITHER UNSET, 0 OR LESS, OR MORE THAN 3
execute if score #RPGPVEGameState Temp matches 1 run function rpgpve:game/preparation_wave/start
execute if score #RPGPVEGameState Temp matches 2 run function rpgpve:game/battle_wave/start
execute if score #RPGPVEGameState Temp matches 3 run function rpgpve:game/game_end/start
#----------------------------------------#
