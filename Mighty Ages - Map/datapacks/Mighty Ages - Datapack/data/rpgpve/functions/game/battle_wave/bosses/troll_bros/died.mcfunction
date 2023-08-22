#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
# Remind system that we're not in a boss fight
scoreboard players set #BossFight Temp 0
scoreboard players set #BossSpawned Temp 0
scoreboard players reset #DeathTimer Temp

# Remove crystal
execute as @e[type=interaction,tag=RegenCrystalInteraction] at @s run function rpgpve:game/battle_wave/bosses/troll_bros/abilities/crystal/remove_crystal

# Timer score
scoreboard players set #BossFightTimer Temp 0

# Sound effects
stopsound @a * rpgpve:music.wave.boss

# Gold
scoreboard players set @a[tag=IsInRPGPVEGame] GoldGot 6000

# Kill Controllers
kill @e[type=zombie,tag=GiantController]

# Time
time set noon

# Hide bossbar
bossbar set rpgpve:troll_bro_x visible false
bossbar set rpgpve:troll_bro_z visible false

# Particles
execute as @a[tag=IsInRPGPVEGame] at @s run particle block stone ~ ~0.6 ~ 1 1 1 0.1 60 force @s
execute as @a[tag=IsInRPGPVEGame] at @s run particle enchant ~ ~0.6 ~ 1 1 1 0.1 60 force @s
execute as @a[tag=IsInRPGPVEGame] at @s run particle lava ~ ~0.6 ~ 1 1 1 0.1 60 force @s
#----------------------------------------#
