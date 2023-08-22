#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------GAME MAIN----------------#
tag @s add Invincible
playsound entity.enderman.teleport hostile @a ~ ~ ~ 1 0.8 0
particle witch ~ ~0.5 ~ 1 1 1 0.1 10 force
item replace entity @s armor.head with scute{CustomModelData:1}
attribute @s generic.movement_speed base set 0.9
#----------------------------------------#
