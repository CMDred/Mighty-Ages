scoreboard players set #Exe Dummy 0
execute as @e[type=marker,tag=WallBallChecker] at @s run function rpgpve:items/wall_ball/on_checker
execute unless score #Exe Dummy matches 0 run schedule function rpgpve:items/wall_ball/on_checker_sched 1t replace