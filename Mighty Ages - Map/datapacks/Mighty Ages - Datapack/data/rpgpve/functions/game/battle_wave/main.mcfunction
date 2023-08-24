#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------GAME MAIN----------------#
scoreboard players add #MusicLoop Temp 1
execute if score #MusicLoop Temp matches 2900.. run function rpgpve:game/battle_wave/loop_music

execute as @e[type=marker,tag=MonsterSpawnParticle] at @s run function rpgpve:game/battle_wave/monsters/game_spawn/particle_main

execute store result score #MobsResting Temp if entity @e[type=#rpgpve:has_health_bar,tag=RPGPVEMob]
execute store result score #ParticlesResting Temp if entity @e[type=marker,tag=MonsterSpawnParticle]
execute unless score #BossFight Temp matches 1 if score #MobsResting Temp matches 0 if score #ParticlesResting Temp matches 0 run function rpgpve:game/battle_wave/killed_all_mobs

# Gold Telekinesis
execute as @e[type=item,predicate=rpgpve:new_gold] run function rpgpve:game/battle_wave/gold/new_gold

# Bosses
execute if score #BossFight Temp matches 1 run function rpgpve:game/battle_wave/bosses/main

# Ice Freeze Entity
execute as @e[type=#rpgpve:monster_or_player,scores={IceArrowFreezeTime=1..}] run scoreboard players remove @s IceArrowFreezeTime 1
execute as @e[type=#rpgpve:monster_or_player,scores={IceArrowFreezeTime=1}] at @s run function rpgpve:game/arrows/ice_arrow/unfreeze

execute as @e[type=armor_stand,tag=Freeze] at @s unless entity @e[type=#rpgpve:has_health_bar,tag=RPGPVEMob,distance=..2] run kill @s

# mini bosses name
execute as @e[type=#rpgpve:has_health_bar,tag=MiniBoss] at @s anchored eyes positioned ^ ^ ^ run tp @e[type=text_display,tag=MiniBossName] ~ ~1 ~

execute if score #CurrentBattleWave Temp matches 20..29 run function rpgpve:game/battle_wave/main_magic
execute if score #CurrentBattleWave Temp matches 40..50 run function rpgpve:game/battle_wave/main_end
#----------------------------------------#
