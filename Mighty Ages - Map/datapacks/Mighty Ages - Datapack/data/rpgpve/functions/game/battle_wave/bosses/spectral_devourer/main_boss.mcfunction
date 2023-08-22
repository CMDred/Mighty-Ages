#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
# Particles
particle enchant ~ ~ ~ 2 2 2 0.01 20 force
particle end_rod ~ ~0.8 ~ 0 0 0 0.01 5 force

execute if entity @s[tag=DarkShield,tag=!VoidShield] run particle dust 0 0 0 1 ~ ~ ~ 1.6 1.6 1.6 0.01 60 force
execute if entity @s[tag=!DarkShield,tag=VoidShield] run particle dust 0.541 0 0.443 1 ~ ~ ~ 1.6 1.6 1.6 0.01 60 force

# Shield & Minions
execute if score #BossSpawned Temp matches 1 run scoreboard players add @s[tag=!VoidShield,tag=!DarkShield] Attack1Timer 1
execute if score @s Attack1Timer >= @s Attack1Delay at @s positioned ~ ~5 ~ run function rpgpve:game/battle_wave/bosses/spectral_devourer/shields/activate
execute as @e[type=armor_stand,tag=SDMinionEgg] run function rpgpve:game/battle_wave/bosses/spectral_devourer/shields/egg_main
execute as @e[type=armor_stand,tag=SDDamageOrb] run function rpgpve:game/battle_wave/bosses/spectral_devourer/shields/orb_main

# Triangle
scoreboard players add @s[tag=!MakingTriangle,tag=!CastTriangle] Attack2Timer 1
execute if score @s Attack2Timer >= @s Attack2Delay at @s positioned ~ ~5 ~ run function rpgpve:game/battle_wave/bosses/spectral_devourer/death_triangle/start
execute if entity @s[tag=MakingTriangle] run tp @s ~ ~ ~ facing entity @a[tag=TriangleTarget,limit=1] feet
execute if score @s[tag=MakingTriangle] AnvilCooldown matches 1.. run scoreboard players remove @s AnvilCooldown 1
execute if score @s[tag=MakingTriangle] AnvilCooldown matches 1 run function rpgpve:game/battle_wave/bosses/spectral_devourer/death_triangle/teleport

execute as @e[type=marker,tag=TrianglePoint] at @s run function rpgpve:game/battle_wave/bosses/spectral_devourer/death_triangle/draw_triangle

execute if score @s[tag=CastTriangle] CastCD matches 1.. run scoreboard players remove @s CastCD 1
execute if score @s[tag=CastTriangle] CastCD matches 120 as @e[type=marker,tag=TrianglePoint] at @s run function rpgpve:game/battle_wave/bosses/spectral_devourer/death_triangle/damage
execute if score @s[tag=CastTriangle] CastCD matches 100 as @e[type=marker,tag=TrianglePoint] at @s run function rpgpve:game/battle_wave/bosses/spectral_devourer/death_triangle/damage
execute if score @s[tag=CastTriangle] CastCD matches 80 as @e[type=marker,tag=TrianglePoint] at @s run function rpgpve:game/battle_wave/bosses/spectral_devourer/death_triangle/damage
execute if score @s[tag=CastTriangle] CastCD matches 60 as @e[type=marker,tag=TrianglePoint] at @s run function rpgpve:game/battle_wave/bosses/spectral_devourer/death_triangle/damage_before_final
execute if score @s[tag=CastTriangle] CastCD matches 2 as @e[type=marker,tag=TrianglePoint] at @s run function rpgpve:game/battle_wave/bosses/spectral_devourer/death_triangle/damage_final
execute if score @s[tag=CastTriangle] CastCD matches 1 run tag @e remove TriangleTarget
execute if score @s[tag=CastTriangle] CastCD matches 1 run kill @e[type=marker,tag=TrianglePoint]
execute if score @s[tag=CastTriangle] CastCD matches 1 run tag @s remove CastTriangle

# Ambient Sound
execute if score @s Date matches 1.. run scoreboard players remove @s Date 1
execute unless score @s Date matches 1.. run scoreboard players set @s Date 0

execute if score @s Date matches ..0 store result score #RNG Temp run random value 1..160
execute if score @s Date matches ..0 if score #RNG Temp matches 1 as @a[tag=IsInRPGPVEGame] run function rpgpve:game/battle_wave/bosses/spectral_devourer/tellraws/ambient/random
#----------------------------------------#
