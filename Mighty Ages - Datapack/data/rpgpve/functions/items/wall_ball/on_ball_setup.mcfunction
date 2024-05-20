summon marker ~ ~ ~ {Tags:["WallBallChecker","NewWallBallChecker"]}
ride @e[type=marker,tag=NewWallBallChecker,distance=..1,limit=1] mount @s

execute on origin if entity @s[team=blue] run scoreboard players set @e[type=marker,tag=NewWallBallChecker,distance=..1,limit=1] Dummy 0
execute on origin if entity @s[team=red] run scoreboard players set @e[type=marker,tag=NewWallBallChecker,distance=..1,limit=1] Dummy 1

tag @e[type=marker,tag=NewWallBallChecker,distance=..1,limit=1] remove NewWallBallChecker

schedule function rpgpve:items/wall_ball/on_checker_sched 1t replace