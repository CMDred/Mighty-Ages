#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
execute store result score #Y Dummy run data get entity @s Pos[1]
execute if score #Y Dummy matches 50.. run scoreboard players add @s Dummy 1
execute if score #Y Dummy matches 50.. if score @s Dummy matches 10.. run data modify entity @s Motion[1] set value -2d
execute unless score #Y Dummy matches 50.. run scoreboard players reset @s Dummy
#----------------------------------------#
