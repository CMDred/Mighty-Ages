schedule function rpgpve:main_20s 20s

# mobs aggro
execute as @e[type=#rpgpve:has_health_bar,tag=RPGPVEMob] at @s run function rpgpve:game/aggro/aggro_closest
