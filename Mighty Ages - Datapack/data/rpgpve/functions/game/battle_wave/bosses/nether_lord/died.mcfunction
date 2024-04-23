#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
# Remind system that we're not in a boss fight
scoreboard players set #BossFight Dummy 0
scoreboard players set #BossSpawned Dummy 0

# Timer score
scoreboard players set #BossFightTimer Dummy 0

# Sound effects
stopsound @a * rpgpve:music.wave.boss

# kill minions
kill @e[type=magma_cube,tag=NetherLordMinion]

# Gold
scoreboard players set @a[tag=IsInRPGPVEGame] GoldGot 800

# Time
time set noon

# Hide bossbar
bossbar set rpgpve:nether_lord visible false

# Particles
execute as @a[tag=IsInRPGPVEGame] at @s run particle flame ~ ~0.6 ~ 1 1 1 0.1 60 force @s
execute as @a[tag=IsInRPGPVEGame] at @s run particle lava ~ ~0.6 ~ 1 1 1 0.1 60 force @s
execute as @a[tag=IsInRPGPVEGame] at @s run particle dripping_lava ~ ~0.6 ~ 1 1 1 0.1 60 force @s
#----------------------------------------#
