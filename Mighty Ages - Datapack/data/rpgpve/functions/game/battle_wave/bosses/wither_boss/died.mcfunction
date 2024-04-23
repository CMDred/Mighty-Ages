#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
# Remind system that we're not in a boss fight
scoreboard players set #BossFight Dummy 0
scoreboard players set #BossSpawned Dummy 0

# kill minions
kill @e[type=#rpgpve:has_health_bar,tag=WitherMinion]

# Timer score
scoreboard players set #BossFightTimer Dummy 0

# Sound effects
stopsound @a * rpgpve:music.wave.boss

# Gold
scoreboard players set @a[tag=IsInRPGPVEGame] GoldGot 7000

# Time
time set noon

# Particles
execute as @a[tag=IsInRPGPVEGame] at @s run particle witch ~ ~0.6 ~ 1 1 1 0.1 60 force @s
execute as @a[tag=IsInRPGPVEGame] at @s run particle enchant ~ ~0.6 ~ 1 1 1 0.1 60 force @s
execute as @a[tag=IsInRPGPVEGame] at @s run particle dripping_obsidian_tear ~ ~0.6 ~ 1 1 1 0.1 60 force @s
#----------------------------------------#
