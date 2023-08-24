#========================================#
#         Made by TheCarotte             #
#       Don't claim as own work          #
#========================================#
#-----------------ITEMS------------------#
execute store result score #HasSword Temp run clear @s #rpgpve:swords 0
execute if score #HasSword Temp matches 0 if score @s PhysicMeleePurchased matches 1.. run function rpgpve:items/give_back_items/give_back_sword

execute store result score #HasBow Temp run clear @s bow 0
execute if score #HasBow Temp matches 0 if score @s PhysicRangedPurchased matches 1.. run function rpgpve:items/give_back_items/give_back_bow

execute store result score #HasSceptre Temp run clear @s #minecraft:shovels 0
execute if score #HasSceptre Temp matches 0 if score @s MagicMeleePurchased matches 1.. run function rpgpve:items/give_back_items/give_back_sceptre

execute store result score #HasWand Temp run clear @s warped_fungus_on_a_stick{PreventDrop:1b} 0
execute if score #HasWand Temp matches 0 if score @s MagicRangedPurchased matches 1.. run function rpgpve:items/give_back_items/give_back_wand
#----------------------------------------#
