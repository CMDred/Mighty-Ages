#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
tag @s remove WillResurface

tag @a[tag=IsInRPGPVEGame,tag=!Eliminated,sort=random,limit=1] add Chosen
execute store result score #X Dummy run data get entity @p[tag=Chosen] Pos[0] 100
execute store result score #Z Dummy run data get entity @p[tag=Chosen] Pos[2] 100

tag @a remove Chosen

execute store result entity @s Pos[0] double 0.01 run scoreboard players get #X Dummy
execute store result entity @s Pos[2] double 0.01 run scoreboard players get #Z Dummy

playsound entity.generic.explode master @a ~ ~ ~ 10 0 0

execute store result score #RNG Dummy run random value 1..3
execute if score @s Date matches ..0 if score #RNG Dummy matches 1 as @a[tag=IsInRPGPVEGame] run function rpgpve:game/battle_wave/bosses/troll_bros/tellraws/abilities/resurface/random

tag @s add Resurfacing
schedule function rpgpve:game/battle_wave/bosses/troll_bros/abilities/dig/resurface_tp 1t replace
schedule function rpgpve:game/battle_wave/bosses/troll_bros/abilities/dig/main_resurfacing_sched 2t replace
#----------------------------------------#
