#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
# Timer
scoreboard players add #BossFightTimer Temp 1

# Start Tellraws
execute if score #BossFightTimer Temp matches 40 as @a[tag=IsInRPGPVEGame] at @s run function rpgpve:game/battle_wave/bosses/troll_bros/tellraws/start/1
execute if score #BossFightTimer Temp matches 60 as @a[tag=IsInRPGPVEGame] at @s run function rpgpve:game/battle_wave/bosses/troll_bros/tellraws/start/2
execute if score #BossFightTimer Temp matches 140 as @a[tag=IsInRPGPVEGame] at @s run function rpgpve:game/battle_wave/bosses/troll_bros/tellraws/start/3
execute if score #BossFightTimer Temp matches 210 as @a[tag=IsInRPGPVEGame] at @s run function rpgpve:game/battle_wave/bosses/troll_bros/tellraws/start/4
execute if score #BossFightTimer Temp matches 270 as @a[tag=IsInRPGPVEGame] at @s run function rpgpve:game/battle_wave/bosses/troll_bros/tellraws/start/5
execute if score #BossFightTimer Temp matches 330 as @a[tag=IsInRPGPVEGame] at @s run function rpgpve:game/battle_wave/bosses/troll_bros/tellraws/start/6
execute if score #BossFightTimer Temp matches 370 as @a[tag=IsInRPGPVEGame] at @s run function rpgpve:game/battle_wave/bosses/troll_bros/tellraws/start/7

# Start Fight
execute if score #BossFightTimer Temp matches 410 run function rpgpve:game/battle_wave/bosses/troll_bros/start_fight
execute if score #BossFightTimer Temp matches 420 run function rpgpve:game/battle_wave/bosses/troll_bros/setup_bossbar
execute if score #BossFightTimer Temp matches 420 run function rpgpve:game/battle_wave/bosses/troll_bros/setup_stats

# Main Boss
execute as @e[type=giant,tag=TrollBro] at @s run function rpgpve:game/battle_wave/bosses/troll_bros/main_both
execute as @e[type=giant,tag=TrollBroX] at @s anchored feet run function rpgpve:game/battle_wave/bosses/troll_bros/main_boss_x
execute as @e[type=giant,tag=TrollBroZ] at @s anchored feet run function rpgpve:game/battle_wave/bosses/troll_bros/main_boss_z

# Boss death
execute if score #BossFightTimer Temp matches 411.. if score #BossSpawned Temp matches 1 unless entity @e[type=giant,tag=TrollBro] run scoreboard players add #DeathTimer Temp 1
execute if score #BossFightTimer Temp matches 411.. if score #BossSpawned Temp matches 1 if score #DeathTimer Temp matches 3 as @a[tag=IsInRPGPVEGame] at @s run function rpgpve:game/battle_wave/bosses/troll_bros/tellraws/death/1
execute if score #BossFightTimer Temp matches 411.. if score #BossSpawned Temp matches 1 if score #DeathTimer Temp matches 35 as @a[tag=IsInRPGPVEGame] at @s run function rpgpve:game/battle_wave/bosses/troll_bros/tellraws/death/2
execute if score #BossFightTimer Temp matches 411.. if score #BossSpawned Temp matches 1 if score #DeathTimer Temp matches 95 as @a[tag=IsInRPGPVEGame] at @s run function rpgpve:game/battle_wave/bosses/troll_bros/tellraws/death/3
execute if score #BossFightTimer Temp matches 411.. if score #BossSpawned Temp matches 1 if score #DeathTimer Temp matches 145 run effect give @a[tag=IsInRPGPVEGame] blindness 6 4 true
execute if score #BossFightTimer Temp matches 411.. if score #BossSpawned Temp matches 1 if score #DeathTimer Temp matches 245 run function rpgpve:game/battle_wave/bosses/troll_bros/died
#----------------------------------------#
