#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
execute if score @s Date matches ..0 store result score #RNG Temp run random value 1..3
execute if score @s Date matches ..0 if score #RNG Temp matches 1..2 as @a[tag=IsInRPGPVEGame] run function rpgpve:game/battle_wave/bosses/nether_lord/tellraws/abilities/minions/random

execute store result score #MinionsCount Temp if entity @e[type=magma_cube,tag=NetherLordMinion] 
execute if score #MinionsCount Temp matches 24.. run kill @e[type=magma_cube,tag=NetherLordMinion,limit=12]

execute positioned ~ ~2 ~10 run function rpgpve:game/battle_wave/monsters/summon/nether/nether_lord_minion
scoreboard players set #MotSpeed Temp 300
execute rotated 0 0 run function rpgpve:motion/motion_1

execute positioned ~-10 ~2 ~ run function rpgpve:game/battle_wave/monsters/summon/nether/nether_lord_minion
scoreboard players set #MotSpeed Temp 300
execute rotated 90 0 run function rpgpve:motion/motion_1

execute positioned ~10 ~2 ~ run function rpgpve:game/battle_wave/monsters/summon/nether/nether_lord_minion
scoreboard players set #MotSpeed Temp 300
execute rotated -90 0 run function rpgpve:motion/motion_1

execute positioned ~ ~2 ~-10 run function rpgpve:game/battle_wave/monsters/summon/nether/nether_lord_minion
scoreboard players set #MotSpeed Temp 300
execute rotated -180 0 run function rpgpve:motion/motion_1

scoreboard players reset @s Attack2Timer
#----------------------------------------#
