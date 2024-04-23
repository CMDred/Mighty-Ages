scoreboard players remove #Reach Dummy 1
particle dripping_lava ~ ~ ~ 0 0 0 0.1 5 force
particle smoke ~ ~ ~ 0.6 0.6 0.6 0.1 10 force
particle dust{color:[1d,0.333d,0d],scale:1} ~ ~ ~ 0.05 0.05 0.05 0.001 3 force

execute as @e[type=#rpgpve:has_health_bar,tag=RPGPVEMob,distance=..2,tag=!Affected] at @s run function rpgpve:items/staffs/catastrophe/hit_effect
execute as @e[type=#rpgpve:has_health_bar,tag=RPGPVEMob,distance=..2] at @s run function rpgpve:items/damage 

execute if score #Reach Dummy matches 1.. positioned ^ ^ ^.2 if block ~ ~ ~ #rpgpve:allowed run function rpgpve:items/staffs/catastrophe/raycast