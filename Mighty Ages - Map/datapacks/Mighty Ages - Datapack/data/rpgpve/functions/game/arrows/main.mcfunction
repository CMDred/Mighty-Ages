#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------GAME MAIN----------------#
scoreboard players set @s HasCustomArrow 0
scoreboard players set @s ArrowDamage 0
execute store result score #CustomArrowAmount Temp run clear @s #rpgpve:arrows{RPG:{NotDefaultArrow:1b}} 0
execute if score #CustomArrowAmount Temp matches 1.. run function rpgpve:game/arrows/find_arrow/start
execute if score #CustomArrowAmount Temp matches 1.. run clear @s #rpgpve:arrows{RPG:{ArrowID:0}}

execute unless score @s HasCustomArrow matches 1.. if data entity @s Inventory[{Slot:8b}] unless data entity @s Inventory[{Slot:8b,id:"minecraft:arrow",tag:{RPG:{ArrowID:0}}}] run function rpgpve:game/arrows/give_other_item_back
execute unless score @s HasCustomArrow matches 1.. run loot replace entity @s hotbar.8 loot rpgpve:items/arrows/feathered_arrow
execute unless score @s HasCustomArrow matches 1.. store result score #NormalArrowsAmount Temp run clear @s arrow{RPG:{ArrowID:0}} 0
execute unless score @s HasCustomArrow matches 1.. if score #NormalArrowsAmount Temp matches 2.. run clear @s arrow{RPG:{ArrowID:0}}
execute unless score @s HasCustomArrow matches 1.. if score #NormalArrowsAmount Temp matches 2.. run loot replace entity @s hotbar.8 loot rpgpve:items/arrows/feathered_arrow
#----------------------------------------#
