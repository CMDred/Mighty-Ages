#========================================#
#          Made by TheCarotte            #
#        Don't claim as own work         #
#========================================#
#----------------RPG PVE-----------------#
scoreboard players reset #MusicLoop Dummy
execute if score #RPGPVEGameState Dummy matches 1 run function rpgpve:game/preparation_wave/start
execute if score #RPGPVEGameState Dummy matches 2 run function rpgpve:game/battle_wave/start
execute if score #RPGPVEGameState Dummy matches 3 run function rpgpve:game/game_end/start
#----------------------------------------#
