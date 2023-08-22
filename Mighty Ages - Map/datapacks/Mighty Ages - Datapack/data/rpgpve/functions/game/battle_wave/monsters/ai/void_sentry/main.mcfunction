#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------GAME MAIN----------------#
particle dust 0.263 0.035 0.388 1.2 ~ ~1.2 ~ .5 .666667 .5 0.1 10 normal

function rpgpve:game/battle_wave/monsters/ai/void_sentry/particles

scoreboard players add @s Temp 1
execute if score @s Temp matches 20.. as @a[tag=IsInRPGPVEGame,tag=!Eliminated,distance=..6] run function rpgpve:game/battle_wave/monsters/ai/void_sentry/damage
execute if score @s Temp matches 20.. run scoreboard players reset @s Temp

execute store result score #RNG Temp run random value 1..100
execute if score #RNG Temp matches 1 run function rpgpve:game/battle_wave/monsters/ai/void_sentry/ambient_sound

execute facing entity @p[tag=IsInRPGPVEGame,distance=..6] feet run tp @s ~ ~ ~ ~ ~
#----------------------------------------#