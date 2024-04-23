scoreboard players remove #Reach Dummy 1
particle dust{color:[1d,0.467d,0.114d],scale:1} ~ ~ ~ 0.5 0.5 0.5 0.001 20 force
particle dust{color:[0.184d,0.369d,0.663d],scale:1} ~ ~ ~ 0.05 0.05 0.05 0.001 3 force
particle electric_spark ~ ~ ~ 0.05 0.05 0.05 0.001 3 force
particle end_rod ~ ~ ~ 0.05 0.05 0.05 0.001 1 force

execute as @e[type=#rpgpve:has_health_bar,tag=RPGPVEMob,distance=..2,tag=!Affected] at @s run function rpgpve:items/staffs/oblivion/throw
execute as @e[type=#rpgpve:has_health_bar,tag=RPGPVEMob,distance=..2] at @s run function rpgpve:items/damage 

execute if score #Reach Dummy matches 1.. positioned ^ ^ ^.2 if block ~ ~ ~ #rpgpve:allowed run function rpgpve:items/staffs/oblivion/raycast
tag @e remove Affected