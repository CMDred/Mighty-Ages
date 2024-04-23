#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------GAME MAIN----------------#
execute on attacker run kill @s
spreadplayers ~ ~ 1 5 under 55 false @s
playsound entity.enderman.teleport hostile @s ~ ~ ~ 1 1 1
effect give @s nausea 4 0 true
effect clear @s poison
#----------------------------------------#
