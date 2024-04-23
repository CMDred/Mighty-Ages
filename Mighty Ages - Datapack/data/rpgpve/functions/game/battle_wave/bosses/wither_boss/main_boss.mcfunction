#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
# Particles
particle end_rod ~ ~0.8 ~ 0 0 0 0.01 5 force

execute if entity @s[tag=!Phase2,tag=!DoingAnimation] run function rpgpve:game/battle_wave/bosses/wither_boss/main_boss_p1
execute if entity @s[tag=Phase2] run function rpgpve:game/battle_wave/bosses/wither_boss/main_boss_p2

# Ambient Sound
execute if score @s Date matches 1.. run scoreboard players remove @s Date 1
execute unless score @s Date matches 1.. run scoreboard players set @s Date 0

execute if score @s Date matches ..0 store result score #RNG Dummy run random value 1..160
execute if score @s Date matches ..0 if score #RNG Dummy matches 1 as @a[tag=IsInRPGPVEGame] run function rpgpve:game/battle_wave/bosses/wither_boss/tellraws/ambient/random

function rpgpve:game/battle_wave/bosses/wither_boss/setup_bossbar
#----------------------------------------#
