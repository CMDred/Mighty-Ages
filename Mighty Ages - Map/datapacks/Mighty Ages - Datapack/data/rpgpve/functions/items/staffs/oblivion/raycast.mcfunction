scoreboard players remove #Reach Temp 1
particle dust 1 0.467 0.114 1 ~ ~ ~ 0.5 0.5 0.5 0.001 20 force
particle electric_spark ~ ~ ~ 0.05 0.05 0.05 0.001 3 force
particle sonic_boom ~ ~ ~ 0.05 0.05 0.05 0.001 1 force
particle end_rod ~ ~ ~ 0.05 0.05 0.05 0.001 1 force

execute as @e[type=#rpgpve:has_health_bar,tag=RPGPVEMob,distance=..2,tag=!Affected] at @s run function rpgpve:items/staffs/oblivion/throw
execute as @e[type=#rpgpve:has_health_bar,tag=RPGPVEMob,distance=..2] at @s run function rpgpve:items/damage 

execute if score #Reach Temp matches 1.. positioned ^ ^ ^.2 if block ~ ~ ~ #rpgpve:allowed run function rpgpve:items/staffs/oblivion/raycast
tag @e remove Affected