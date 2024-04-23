scoreboard players remove #Reach Dummy 1

particle end_rod ~ ~ ~ 0 0 0 0.01 2 force
particle dust{color:[0.29d,0.882d,1d],scale:1} ~ ~ ~ 0 0 0 0.01 2 force

execute as @e[type=#rpgpve:has_health_bar,tag=RPGPVEMob,distance=..2] at @s run function rpgpve:items/damage 

execute if score #Reach Dummy matches 1.. positioned ^ ^ ^.2 if block ~ ~ ~ #rpgpve:allowed run function rpgpve:items/staffs/glowing_branch/raycast