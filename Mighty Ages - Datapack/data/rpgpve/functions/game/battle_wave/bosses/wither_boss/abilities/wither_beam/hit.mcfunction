#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
tag @e[type=wither,tag=Boss] add Attacker

scoreboard players operation @s ApplyMagicDamage = @e[type=wither,tag=Boss,limit=1] BaseMagicDamage
#----------------------------------------#
