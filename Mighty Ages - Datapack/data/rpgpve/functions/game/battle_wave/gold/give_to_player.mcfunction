#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------GOLD-------------------#
execute store result score #Gold Dummy run data get entity @e[type=item,tag=ThisItem,limit=1] Item.count
scoreboard players operation @s GoldGot += #Gold Dummy 
kill @e[type=item,tag=ThisItem,limit=1]
#----------------------------------------#
