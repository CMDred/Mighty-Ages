#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
tag @s add Digging
playsound entity.warden.emerge master @a ~ ~ ~ 2 1.5 0
schedule function rpgpve:game/battle_wave/bosses/troll_bros/abilities/dig/main_digging_sched 1t replace
execute store result score #RNG Temp run random value 1..3
execute if score @s Date matches ..0 if score #RNG Temp matches 1 as @a[tag=IsInRPGPVEGame] run function rpgpve:game/battle_wave/bosses/troll_bros/tellraws/abilities/dig/random
scoreboard players reset @s Attack3Timer
#----------------------------------------#
