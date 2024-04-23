#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
execute store result score #RNG Dummy run random value 1..3
execute if score @s Date matches ..0 if score #RNG Dummy matches 1 as @a[tag=IsInRPGPVEGame] run function rpgpve:game/battle_wave/bosses/troll_bros/tellraws/abilities/earth_bound/random
execute at @a[tag=IsInRPGPVEGame,tag=!Eliminated,distance=..20,sort=nearest,limit=1] positioned ~ ~15 ~ run function rpgpve:game/battle_wave/bosses/troll_bros/abilities/earth_bound/summon_sphere
schedule function rpgpve:game/battle_wave/bosses/troll_bros/abilities/earth_bound/main_block_sched 1t replace
scoreboard players reset @s Attack2Timer
#----------------------------------------#
