scoreboard players remove #Reach Dummy 1
particle end_rod ~ ~ ~ 0 0 0 0.01 2 force
particle dust{color:[0.114d,0.663d,0.773d],scale:1} ~ ~ ~ 0.05 0.05 0.05 0.001 3 force
execute as @e[type=#rpgpve:has_health_bar,tag=RPGPVEMob,distance=..2] at @s run function rpgpve:items/damage
execute if score #Reach Dummy matches 1.. positioned ^ ^ ^.2 if block ~ ~ ~ #rpgpve:allowed run function rpgpve:items/staffs/mage_stick/raycast