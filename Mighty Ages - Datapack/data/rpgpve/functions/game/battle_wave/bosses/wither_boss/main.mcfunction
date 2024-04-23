#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
# Timer
scoreboard players add #BossFightTimer Dummy 1

# Start Tellraws
execute if score #BossFightTimer Dummy matches 40 as @a[tag=IsInRPGPVEGame] at @s run function rpgpve:game/battle_wave/bosses/wither_boss/tellraws/start/1

# Start Fight
execute if score #BossFightTimer Dummy matches 1010 as @e[type=wither,tag=Boss,limit=1] run function rpgpve:game/battle_wave/bosses/wither_boss/setup_bossbar
execute if score #BossFightTimer Dummy matches 1010 run function rpgpve:game/battle_wave/bosses/wither_boss/setup_stats

# Main Boss
execute as @e[type=wither,tag=WitherBoss] at @s rotated as @s run function rpgpve:game/battle_wave/bosses/wither_boss/main_boss

# Boss death
execute if score #BossFightTimer Dummy matches 1020.. if score #BossSpawned Dummy matches 1 unless entity @e[type=wither,tag=Boss] run scoreboard players add #DeathTimer Dummy 1
execute if score #BossFightTimer Dummy matches 1020.. if score #BossSpawned Dummy matches 1 if score #DeathTimer Dummy matches 3 as @a[tag=IsInRPGPVEGame] at @s run function rpgpve:game/battle_wave/bosses/wither_boss/tellraws/death/1
execute if score #BossFightTimer Dummy matches 1020.. if score #BossSpawned Dummy matches 1 if score #DeathTimer Dummy matches 35 as @a[tag=IsInRPGPVEGame] at @s run function rpgpve:game/battle_wave/bosses/wither_boss/tellraws/death/2
execute if score #BossFightTimer Dummy matches 1020.. if score #BossSpawned Dummy matches 1 if score #DeathTimer Dummy matches 95 as @a[tag=IsInRPGPVEGame] at @s run function rpgpve:game/battle_wave/bosses/wither_boss/tellraws/death/3
execute if score #BossFightTimer Dummy matches 1020.. if score #BossSpawned Dummy matches 1 if score #DeathTimer Dummy matches 145 run effect give @a[tag=IsInRPGPVEGame] blindness 6 4 true
execute if score #BossFightTimer Dummy matches 1020.. if score #BossSpawned Dummy matches 1 if score #DeathTimer Dummy matches 245 run function rpgpve:game/battle_wave/bosses/wither_boss/died
#----------------------------------------#
