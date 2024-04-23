schedule function rpgpve:main_20s 20s

# mobs aggro
execute as @e[type=#rpgpve:has_health_bar,tag=RPGPVEMob] run attribute @s minecraft:generic.follow_range base set 10
execute as @e[type=#rpgpve:has_health_bar,tag=RPGPVEMob,tag=!VoidSentry] at @s run damage @s 0.001 rpgpve:manual_damage by @p[tag=IsInRPGPVEGame,tag=!Eliminated]
execute as @e[type=#rpgpve:has_health_bar,tag=RPGPVEMob] run attribute @s minecraft:generic.follow_range base set 120
