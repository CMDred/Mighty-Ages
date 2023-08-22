scoreboard players remove #Reach Temp 1

particle sculk_charge_pop ~ ~ ~ 0 0 0 0.01 2 force

particle dust 0 0.106 0.337 1 ~ ~ ~ 0.05 0.05 0.05 0.001 3 force

execute as @e[type=#rpgpve:has_health_bar,tag=RPGPVEMob,distance=..2] at @s run function rpgpve:items/damage 

execute if score #Reach Temp matches 1.. positioned ^ ^ ^.2 if block ~ ~ ~ #rpgpve:allowed run function rpgpve:items/staffs/sculk_staff/raycast