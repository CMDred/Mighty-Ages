#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
# Remind system that we're in a boss fight
scoreboard players set #BossFight Dummy 1

# Timer score
scoreboard players set #BossFightTimer Dummy 0
scoreboard players set #DeathTimer Dummy 0

# Give blindness
effect give @a[tag=IsInRPGPVEGame] blindness 16 4 true

# Sound effects
playsound item.firecharge.use master @a[tag=IsInRPGPVEGame] ~ ~ ~ 0.6 0
playsound block.fire.extinguish master @a[tag=IsInRPGPVEGame] ~ ~ ~ 0.3 0 
playsound block.fire.ambient master @a[tag=IsInRPGPVEGame] ~ ~ ~ 3 0 
playsound entity.generic.explode master @a[tag=IsInRPGPVEGame] ~ ~ ~ 1 0
playsound entity.zombie.ambient master @a[tag=IsInRPGPVEGame] ~ ~ ~ 0.8 0.5
playsound entity.zombie.ambient master @a[tag=IsInRPGPVEGame] ~ ~ ~ 0.8 1.75
playsound entity.ender_dragon.growl master @a[tag=IsInRPGPVEGame] ~ ~ ~ 0.15 0.2
stopsound @a * rpgpve:music.wave.battle

# Particles
execute as @a[tag=IsInRPGPVEGame] at @s run particle enchant ~ ~0.6 ~ 1 1 1 0.1 60 force @s
execute as @a[tag=IsInRPGPVEGame] at @s run particle electric_spark ~ ~0.6 ~ 1 1 1 0.1 60 force @s
execute as @a[tag=IsInRPGPVEGame] at @s run particle witch ~ ~0.6 ~ 1 1 1 0.1 60 force @s
#----------------------------------------#
