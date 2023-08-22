#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
tag @e[type=wither,tag=Boss,limit=1] add Attacker
execute as @a[tag=IsInRPGPVEGame,distance=..3] run scoreboard players operation @s ApplyPhysicDamage = @e[type=wither,tag=Boss,limit=1] BasePhysicDamage
playsound entity.wither.ambient master @a ~ ~ ~ 0.75 2 0
particle explosion ~ ~ ~ 1 1 1 0.1 10 normal
tag @e[type=wither,tag=Attacker] remove Attacker
kill @s
#----------------------------------------#
