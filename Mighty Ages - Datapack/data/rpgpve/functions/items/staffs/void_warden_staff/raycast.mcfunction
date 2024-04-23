scoreboard players remove #Reach Dummy 1
particle dust{color:[0.184d,0.369d,0.663d],scale:1} ~ ~ ~ 0.05 0.05 0.05 0.001 3 force
particle dust{color:[0.314d,0d,0.337d],scale:1} ~ ~ ~ 0.05 0.05 0.05 0.001 3 force
execute as @e[type=#rpgpve:has_health_bar,tag=RPGPVEMob,distance=..2] at @s run function rpgpve:items/damage 
execute if score #Reach Dummy matches 1.. positioned ^ ^ ^.2 if block ~ ~ ~ #rpgpve:allowed run function rpgpve:items/staffs/void_warden_staff/raycast