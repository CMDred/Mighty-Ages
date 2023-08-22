#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------GOLD-------------------#
execute store result score @s GoldGot run data get entity @e[type=item,tag=ThisItem,limit=1] Item.Count
function rpgpve:game/battle_wave/add_gold
kill @e[type=item,tag=ThisItem,limit=1]
#----------------------------------------#
