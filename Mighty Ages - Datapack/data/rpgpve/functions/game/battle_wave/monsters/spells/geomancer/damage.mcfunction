#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
tag @s add Stop
tag @e[type=marker,tag=GeomancerSpikePos,sort=nearest,limit=1] add Stop
scoreboard players operation @a[tag=IsInRPGPVEGame,gamemode=adventure,distance=..3] ApplyMagicDamage = @e[type=marker,tag=GeomancerSpikePos,sort=nearest,limit=1] Dummy
#----------------------------------------#
