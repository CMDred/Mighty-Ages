#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
# Timer
scoreboard players add #BossFightTimer Dummy 1

# put delays

# Start Tellraws
execute if score #BossFightTimer Dummy matches 40 as @a[tag=IsInRPGPVEGame] at @s run function rpgpve:game/battle_wave/bosses/spectral_devourer/tellraws/start/1
execute if score #BossFightTimer Dummy matches 80 as @a[tag=IsInRPGPVEGame] at @s run function rpgpve:game/battle_wave/bosses/spectral_devourer/tellraws/start/2
execute if score #BossFightTimer Dummy matches 140 as @a[tag=IsInRPGPVEGame] at @s run function rpgpve:game/battle_wave/bosses/spectral_devourer/tellraws/start/3
execute if score #BossFightTimer Dummy matches 190 as @a[tag=IsInRPGPVEGame] at @s run function rpgpve:game/battle_wave/bosses/spectral_devourer/tellraws/start/4
execute if score #BossFightTimer Dummy matches 260 as @a[tag=IsInRPGPVEGame] at @s run function rpgpve:game/battle_wave/bosses/spectral_devourer/tellraws/start/5

# Start Fight
execute if score #BossFightTimer Dummy matches 265 run function rpgpve:game/battle_wave/bosses/spectral_devourer/start_fight
execute if score #BossFightTimer Dummy matches 275 run function rpgpve:game/battle_wave/bosses/spectral_devourer/setup_bossbar
execute if score #BossFightTimer Dummy matches 275 run function rpgpve:game/battle_wave/bosses/spectral_devourer/setup_stats

# Main Boss
execute as @e[type=phantom,tag=SpectralDevourer] at @s rotated as @s run function rpgpve:game/battle_wave/bosses/spectral_devourer/main_boss

# Boss death
execute if score #BossFightTimer Dummy matches 270.. if score #BossSpawned Dummy matches 1 unless entity @e[type=phantom,tag=Boss] run scoreboard players add #DeathTimer Dummy 1
execute if score #BossFightTimer Dummy matches 270.. if score #BossSpawned Dummy matches 1 if score #DeathTimer Dummy matches 3 as @a[tag=IsInRPGPVEGame] at @s run function rpgpve:game/battle_wave/bosses/spectral_devourer/tellraws/death/1
execute if score #BossFightTimer Dummy matches 270.. if score #BossSpawned Dummy matches 1 if score #DeathTimer Dummy matches 35 as @a[tag=IsInRPGPVEGame] at @s run function rpgpve:game/battle_wave/bosses/spectral_devourer/tellraws/death/2
execute if score #BossFightTimer Dummy matches 270.. if score #BossSpawned Dummy matches 1 if score #DeathTimer Dummy matches 95 as @a[tag=IsInRPGPVEGame] at @s run function rpgpve:game/battle_wave/bosses/spectral_devourer/tellraws/death/3
execute if score #BossFightTimer Dummy matches 270.. if score #BossSpawned Dummy matches 1 if score #DeathTimer Dummy matches 145 run effect give @a[tag=IsInRPGPVEGame] blindness 6 4 true
execute if score #BossFightTimer Dummy matches 270.. if score #BossSpawned Dummy matches 1 if score #DeathTimer Dummy matches 245 run function rpgpve:game/battle_wave/bosses/spectral_devourer/died
#----------------------------------------#
