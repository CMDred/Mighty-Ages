#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
tp @s -15000 60 0
tag @a remove TriangleTarget
tag @a[tag=IsInRPGPVEGame,tag=!Eliminated,gamemode=adventure,sort=random,limit=1] add TriangleTarget

tellraw @a[tag=IsInRPGPVEGame] ["",{"text":"Spectral Devourer","color":"dark_purple"},{"text":" >>","color":"dark_gray"},{"text":" You better hide, ","color":"light_purple"},{"selector":"@a[tag=TriangleTarget,limit=1]","color":"dark_purple"},{"text":"!","color":"light_purple"}]

data modify entity @s NoAI set value 1b
tag @s add MakingTriangle

execute as @a[tag=IsInRPGPVEGame] at @s run playsound entity.enderman.teleport master @s ~ ~ ~ 0.7 2
execute as @a[tag=IsInRPGPVEGame] at @s run playsound entity.phantom.ambient master @s ~ ~ ~ 0.9 2

scoreboard players set @s BowUsed 0
scoreboard players set @s AnvilCooldown 40

execute store result score #rand Dummy run random value 900..1100
scoreboard players operation @s Attack2Delay = #rand Dummy
scoreboard players reset @s Attack2Timer
#----------------------------------------#
