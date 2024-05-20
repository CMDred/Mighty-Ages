scoreboard players set #Exe Dummy 0
execute as @e[type=marker,tag=WallBlock] at @s run function rpgpve:items/wall_ball/on_wall
execute unless score #Exe Dummy matches 0 run schedule function rpgpve:items/wall_ball/on_wall_sched 1t replace