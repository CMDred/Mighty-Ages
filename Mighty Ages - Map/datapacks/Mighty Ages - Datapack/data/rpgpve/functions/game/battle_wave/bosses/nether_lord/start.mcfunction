#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
# Remind system that we're in a boss fight
scoreboard players set #BossFight Temp 1

# Timer score
scoreboard players set #BossFightTimer Temp 0

# Give blindness
effect give @a[tag=IsInRPGPVEGame] blindness 16 4 true

# Sound effects
playsound item.firecharge.use master @a[tag=IsInRPGPVEGame] ~ ~ ~ 0.6 0
playsound block.fire.extinguish master @a[tag=IsInRPGPVEGame] ~ ~ ~ 0.3 0 
playsound block.fire.ambient master @a[tag=IsInRPGPVEGame] ~ ~ ~ 3 0 
playsound entity.blaze.ambient master @a[tag=IsInRPGPVEGame] ~ ~ ~ 1 0.6 
playsound entity.wither.spawn master @a[tag=IsInRPGPVEGame] ~ ~ ~ 0.8 0.6
playsound entity.ender_dragon.growl master @a[tag=IsInRPGPVEGame] ~ ~ ~ 0.3 0.2
stopsound @a * rpgpve:music.wave.battle

# Particles
execute as @a[tag=IsInRPGPVEGame] at @s run particle flame ~ ~0.6 ~ 1 1 1 0.1 60 force @s
execute as @a[tag=IsInRPGPVEGame] at @s run particle lava ~ ~0.6 ~ 1 1 1 0.1 60 force @s
execute as @a[tag=IsInRPGPVEGame] at @s run particle dripping_lava ~ ~0.6 ~ 1 1 1 0.1 60 force @s
#----------------------------------------#
