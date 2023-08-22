#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
particle dust 0.024 0 0.161 1 ~ ~ ~ 2.5 2.5 2.5 0.1 800 normal
scoreboard players operation @a[tag=IsInRPGPVEGame,gamemode=adventure,distance=..6] ApplyMagicDamage = @s Temp
kill @s
#----------------------------------------#
