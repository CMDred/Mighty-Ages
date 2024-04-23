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

# Gold
scoreboard players set @a[tag=IsInRPGPVEGame] GoldGot 2100

# Time
time set noon

# Hide bossbar
bossbar set rpgpve:spectral_devourer visible false
bossbar set rpgpve:spectral_devourer players
# Particles
execute as @a[tag=IsInRPGPVEGame] at @s run particle witch ~ ~0.6 ~ 1 1 1 0.1 60 force @s
execute as @a[tag=IsInRPGPVEGame] at @s run particle enchant ~ ~0.6 ~ 1 1 1 0.1 60 force @s
execute as @a[tag=IsInRPGPVEGame] at @s run particle dripping_obsidian_tear ~ ~0.6 ~ 1 1 1 0.1 60 force @s
#----------------------------------------#
