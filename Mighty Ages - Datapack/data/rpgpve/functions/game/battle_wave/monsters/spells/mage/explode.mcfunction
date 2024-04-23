#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
particle explosion ~ ~ ~ 0.5 0.5 0.5 0.1 1 force
particle lava ~ ~ ~ 1 1 1 0.1 50 force
particle dripping_lava ~ ~ ~ 1 1 1 0.1 50 force
particle smoke ~ ~ ~ 1 1 1 0.1 50 force
playsound entity.generic.explode master @a[distance=..20] 1 0 2
scoreboard players operation @a[tag=IsInRPGPVEGame,gamemode=adventure,distance=..3] ApplyMagicDamage = @s Dummy
tp @s ~ ~-100 ~
kill @s
#----------------------------------------#
