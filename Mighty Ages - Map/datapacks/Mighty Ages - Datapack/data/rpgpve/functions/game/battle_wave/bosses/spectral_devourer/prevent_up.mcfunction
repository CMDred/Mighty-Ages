#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
execute store result score #Y Temp run data get entity @s Pos[1]
execute if score #Y Temp matches 50.. run scoreboard players add @s Temp 1
execute if score #Y Temp matches 50.. if score @s Temp matches 10.. run data modify entity @s Motion[1] set value -2d
execute unless score #Y Temp matches 50.. run scoreboard players reset @s Temp
#----------------------------------------#
