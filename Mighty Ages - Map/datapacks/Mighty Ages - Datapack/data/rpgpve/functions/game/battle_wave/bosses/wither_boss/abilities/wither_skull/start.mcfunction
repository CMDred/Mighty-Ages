#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
tag @s add DoingAnimation
tag @s add DoingSkull

execute if score @s Date matches ..0 store result score #RNG Temp run random value 1..3
execute if score @s Date matches ..0 if score #RNG Temp matches 1 as @a[tag=IsInRPGPVEGame] run function rpgpve:game/battle_wave/bosses/wither_boss/tellraws/abilities/skull/1

scoreboard players reset @s Temp

execute if dimension rpgpve:rpgpve_game run tp @s -20000 -8 0 90 -25
execute if dimension the_end run tp @s 0 55 0 90 -25

playsound entity.enderman.teleport hostile @a ~ ~ ~ 5 1 0

data modify entity @s NoAI set value 1b


function rpgpve:game/battle_wave/bosses/wither_boss/abilities/wither_skull/main_sched

scoreboard players reset @s Attack1Timer
#----------------------------------------#
