#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#------------------TICK------------------#
execute store result score @s PlayerY run data get entity @s Pos[1]
execute if score @s PlayerY matches ..0 run effect give @s minecraft:slow_falling 1 50 true
execute if score @s PlayerY matches ..-10 run tp @s 0 7 0
#----------------------------------------#
