#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
scoreboard players set #Digging Temp 1

execute anchored eyes positioned ^ ^ ^ if block ~ ~3 ~ #rpgpve:troll_bro_dig_allowed anchored feet positioned ^ ^ ^ run scoreboard players set #Move Temp 1

execute if score #Move Temp matches 1 run function rpgpve:game/battle_wave/bosses/troll_bros/abilities/dig/dig_move
execute if score #Move Temp matches 0 run function rpgpve:game/battle_wave/bosses/troll_bros/abilities/dig/dig_end
scoreboard players set #Move Temp 0
#----------------------------------------#
