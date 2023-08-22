#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
tag @s add DoingAnimation
tag @s add DoingGroundPound

tag @a[tag=IsInRPGPVEGame,sort=random,limit=1] add GroundPoundTarget

execute if score @s Date matches ..0 store result score #RNG Temp run random value 1..3
execute if score @s Date matches ..0 if score #RNG Temp matches 1 as @a[tag=IsInRPGPVEGame] run function rpgpve:game/battle_wave/bosses/wither_boss/tellraws/abilities/ground_pound/1

scoreboard players reset @s Temp
scoreboard players reset @s AbsMath

execute if dimension rpgpve:rpgpve_game run tp @s -20000 5 0
execute if dimension the_end run tp @s 0 80 0

playsound entity.enderman.teleport hostile @a ~ ~ ~ 5 1 0
playsound entity.guardian.ambient_land hostile @a ~ ~ ~ 3 1.5 0

data modify entity @s NoAI set value 1b



execute store result score @s AbsMath run random value 100..180

function rpgpve:game/battle_wave/bosses/wither_boss/abilities/ground_pound/main_sched

scoreboard players reset @s Attack4Timer
#----------------------------------------#
