#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
scoreboard players add @s BowUsed 1

execute if score @s BowUsed matches 1 run tp @s -15030 60 35
execute if score @s BowUsed matches 1 run summon marker -15030 60 35 {Tags:["TrianglePoint","PointA"]}
execute if score @s BowUsed matches 4 run tp @s -15030 60 35
execute if score @s BowUsed matches 4 run summon marker -15030 60 35 {Tags:["TrianglePoint","PointA2"]}

execute if score @s BowUsed matches 2 run tp @s -15030 60 -35
execute if score @s BowUsed matches 2 run summon marker -15030 60 -35 {Tags:["TrianglePoint","PointB"]}

execute if score @s BowUsed matches 3 run tp @s -14960 60 0
execute if score @s BowUsed matches 3 run summon marker -14960 60 0 {Tags:["TrianglePoint","PointC"]}

execute if score @s BowUsed matches 5 run tp @s -15000 60 0

execute as @a[tag=IsInRPGPVEGame] at @s run playsound entity.enderman.teleport master @s ~ ~ ~ 0.7 2
execute as @a[tag=IsInRPGPVEGame] at @s run playsound entity.phantom.ambient master @s ~ ~ ~ 0.9 2

scoreboard players set @s AnvilCooldown 20

execute if score @s BowUsed matches 5 run scoreboard players set @s CastCD 220
execute if score @s BowUsed matches 5 run tag @s remove MakingTriangle
execute if score @s BowUsed matches 5 run tag @s add CastTriangle
execute if score @s BowUsed matches 5 as @a[tag=IsInRPGPVEGame] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 0.9 0
execute if score @s BowUsed matches 5 as @a[tag=IsInRPGPVEGame] at @s run playsound block.portal.trigger master @s ~ ~ ~ 1.7 0.78
#----------------------------------------#
