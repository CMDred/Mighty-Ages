scoreboard players remove #Reach Temp 1
particle smoke ~ ~ ~ 0.1 0.1 0.1 0.01 1 force
particle dust 0.863 1 0.31 1 ~ ~ ~ 0.05 0.05 0.05 0.001 3 force
execute as @e[type=#rpgpve:has_health_bar,tag=RPGPVEMob,distance=..1.2,tag=!Affected] at @s run function rpgpve:items/staffs/stalk_of_truth/repel
execute as @e[type=#rpgpve:has_health_bar,tag=RPGPVEMob,distance=..1.2] at @s run function rpgpve:items/damage 
execute if score #Reach Temp matches 1.. positioned ^ ^ ^.2 if block ~ ~ ~ #rpgpve:allowed run function rpgpve:items/staffs/stalk_of_truth/raycast1