#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
# Particles
particle lava ~ ~6 ~ 4.5 4.5 4.5 0.01 20 force
particle flame ~ ~6 ~ 5 5 5 0.01 40 force

# Look at nearest player
execute facing entity @p[tag=!Eliminated,tag=IsInRPGPVEGame] feet run tp @s ~ ~ ~ ~ ~

# Attacks
scoreboard players add @s Attack1Timer 1
execute if score @s Attack1Timer >= @s Attack1Delay at @s positioned ~ ~5 ~ run function rpgpve:game/battle_wave/bosses/nether_lord/fireball/shoot

scoreboard players add @s Attack2Timer 1
execute if score @s Attack2Timer >= @s Attack2Delay at @s positioned ~ ~5 ~ run function rpgpve:game/battle_wave/bosses/nether_lord/summon_minions/summon

# Ambient Sound
execute if score @s Date matches 1.. run scoreboard players remove @s Date 1
execute unless score @s Date matches 1.. run scoreboard players set @s Date 0

execute if score @s Date matches ..0 store result score #RNG Dummy run random value 1..160
execute if score @s Date matches ..0 if score #RNG Dummy matches 1 as @a[tag=IsInRPGPVEGame] run function rpgpve:game/battle_wave/bosses/nether_lord/tellraws/ambient/random
#----------------------------------------#
