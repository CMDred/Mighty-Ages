#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
playsound entity.wither.shoot master @a ~ ~ ~ 2 0.5 0
tag @s add Move
execute facing entity @a[tag=IsInRPGPVEGame,tag=!Eliminated,sort=random,limit=1] eyes run tp @s ~ ~ ~ ~ ~ 

tag @e[type=wither,tag=Boss] remove DoingAnimation
tag @e[type=wither,tag=Boss] remove DoingSkull
data modify entity @e[type=wither,tag=Boss,limit=1] NoAI set value 0b
#----------------------------------------#
