#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
particle dust{color:[0.024d,0d,0.161d],scale:1} ~ ~ ~ 2.5 2.5 2.5 0.1 800 normal
scoreboard players operation @a[tag=IsInRPGPVEGame,gamemode=adventure,distance=..6] ApplyMagicDamage = @s Dummy
kill @s
#----------------------------------------#
