#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
scoreboard players reset @s Attack3Timer
execute store result score #RNG Temp run random value 1..3
execute if score @s Date matches ..0 if score #RNG Temp matches 1 as @a[tag=IsInRPGPVEGame] run function rpgpve:game/battle_wave/bosses/troll_bros/tellraws/abilities/jump/random

scoreboard players set #Reach Temp 100
scoreboard players set #MotSpeed Temp 0

execute anchored feet positioned ^ ^ ^ facing entity @p[tag=IsInRPGPVEGame,tag=!Eliminated] feet run function rpgpve:game/battle_wave/bosses/troll_bros/abilities/jump/raycast

tag @s add Motion_target
execute facing entity @p[tag=IsInRPGPVEGame,tag=!Eliminated] feet rotated ~ -30 run function rpgpve:motion/motion
#----------------------------------------#
