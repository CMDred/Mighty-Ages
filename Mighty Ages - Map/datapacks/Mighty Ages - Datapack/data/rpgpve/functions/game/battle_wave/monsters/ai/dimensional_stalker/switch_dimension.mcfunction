#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------GAME MAIN----------------#
scoreboard players set #executed Temp 0
execute if entity @s[tag=Invincible] run function rpgpve:game/battle_wave/monsters/ai/dimensional_stalker/to_overworld
execute if entity @s[tag=!Invincible] unless score #executed Temp matches 1 run function rpgpve:game/battle_wave/monsters/ai/dimensional_stalker/to_otherworld
scoreboard players reset @s Temp
execute store result score @s AbsMath run random value 100..200
#----------------------------------------#
