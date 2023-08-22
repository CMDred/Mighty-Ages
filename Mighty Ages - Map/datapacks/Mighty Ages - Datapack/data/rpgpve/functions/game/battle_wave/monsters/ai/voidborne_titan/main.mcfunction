#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------GAME MAIN----------------#
execute unless score @s AbsMath matches 0.. store result score @s AbsMath run random value 300..500

particle dust 0.651 0 0 0.6 ~ ~1 ~ 0.6 1.1 0.6 0.01 20 normal

scoreboard players add @s Temp 1
execute if score @s Temp >= @s AbsMath run function rpgpve:game/battle_wave/monsters/ai/voidborne_titan/bend_time
#----------------------------------------#
