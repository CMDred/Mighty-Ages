#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
# Remind system that we're in a boss fight
scoreboard players set #BossFight Temp 1

# Timer score
scoreboard players set #BossFightTimer Temp 0
scoreboard players set #DeathTimer Temp 0

# Give blindness
effect give @a[tag=IsInRPGPVEGame] blindness 16 4 true

# Sound effects
playsound block.fire.extinguish master @a[tag=IsInRPGPVEGame] ~ ~ ~ 0.3 0 
playsound entity.generic.explode master @a[tag=IsInRPGPVEGame] ~ ~ ~ 1 0
playsound entity.wither.ambient master @a[tag=IsInRPGPVEGame] ~ ~ ~ 0.3 0.2
stopsound @a * rpgpve:music.wave.battle
stopsound @a * rpgpve:music.wave.preparation

# Particles
execute as @a[tag=IsInRPGPVEGame] at @s run particle dust 0 0 0 1 ~ ~0.6 ~ 1 1 1 0.1 60 force @s
execute as @a[tag=IsInRPGPVEGame] at @s run particle ash ~ ~0.6 ~ 1 1 1 0.1 60 force @s
#----------------------------------------#
