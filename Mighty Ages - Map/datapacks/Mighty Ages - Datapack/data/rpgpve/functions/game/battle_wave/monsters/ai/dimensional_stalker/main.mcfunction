#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------GAME MAIN----------------#
execute unless score @s AbsMath matches 0.. store result score @s AbsMath run random value 100..200

execute if entity @s[tag=Invincible] anchored feet run particle dust 0.573 0.153 0.631 0.6 ~ ~ ~ .6 0.5 .6 0.01 20 normal
execute if entity @s[tag=!Invincible] anchored feet run particle dust 1 0.859 0.631 0.6 ~ ~ ~ .6 0.5 .6 0.01 20 normal

scoreboard players add @s Temp 1
execute if score @s Temp >= @s AbsMath run function rpgpve:game/battle_wave/monsters/ai/dimensional_stalker/switch_dimension
#----------------------------------------#
