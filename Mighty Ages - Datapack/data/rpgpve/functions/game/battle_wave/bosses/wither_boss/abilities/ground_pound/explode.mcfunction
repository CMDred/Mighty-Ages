#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
tag @s add Attacker
execute as @a[tag=IsInRPGPVEGame,tag=!Eliminated,distance=..10] run scoreboard players operation @s ApplyPhysicDamage = @e[type=wither,tag=Boss,limit=1] BonusPhysicDamage
playsound entity.generic.explode master @a ~ ~ ~ 1 0 0
particle explosion ~ ~ ~ 5 .5 5 0.1 50 normal
tp @s @p[tag=IsInRPGPVEGame,tag=!Eliminated]
tag @s remove Attacker
tag @s remove DoingAnimation
tag @s remove IsFalling
tag @a remove GroundPoundTarget
data modify entity @s NoAI set value 0b
#----------------------------------------#
