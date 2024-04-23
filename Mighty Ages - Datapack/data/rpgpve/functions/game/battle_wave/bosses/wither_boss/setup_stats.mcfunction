#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
scoreboard players set @e[type=wither,tag=Boss,limit=1] BasePhysicDamage 280
scoreboard players set @e[type=wither,tag=Boss,limit=1] BaseMagicDamage 400
scoreboard players set @e[type=wither,tag=Boss,limit=1] BonusPhysicDamage 300

scoreboard players set @e[type=wither,tag=Boss,limit=1] Attack1Delay 500
scoreboard players set @e[type=wither,tag=Boss,limit=1] Attack2Delay 300
scoreboard players set @e[type=wither,tag=Boss,limit=1] Attack3Delay 1000
scoreboard players set @e[type=wither,tag=Boss,limit=1] Attack4Delay 400

attribute @e[type=wither,tag=Boss,limit=1] generic.attack_damage base set 300
#----------------------------------------#
