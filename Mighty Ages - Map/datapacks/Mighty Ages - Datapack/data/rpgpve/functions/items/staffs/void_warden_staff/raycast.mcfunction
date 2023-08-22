scoreboard players remove #Reach Temp 1
particle sonic_boom ~ ~ ~ 0.1 0.1 0.1 1 1 force
particle dust 0.314 0 0.337 1 ~ ~ ~ 0.05 0.05 0.05 0.001 3 force
execute as @e[type=#rpgpve:has_health_bar,tag=RPGPVEMob,distance=..2] at @s run function rpgpve:items/damage 
execute if score #Reach Temp matches 1.. positioned ^ ^ ^.2 if block ~ ~ ~ #rpgpve:allowed run function rpgpve:items/staffs/void_warden_staff/raycast