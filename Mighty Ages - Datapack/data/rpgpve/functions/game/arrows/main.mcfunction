#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------GAME MAIN----------------#
scoreboard players set @s HasCustomArrow 0
scoreboard players set @s ArrowDamage 0
execute store result score #CustomArrowAmount Dummy if items entity @s inventory.* #rpgpve:arrows[minecraft:custom_data={RPG:{NotDefaultArrow:1b}}]
execute store result score #CustomArrowAmountHotbar Dummy if items entity @s hotbar.* #rpgpve:arrows[minecraft:custom_data={RPG:{NotDefaultArrow:1b}}]
scoreboard players operation #CustomArrowAmount Dummy += #CustomArrowAmountHotbar Dummy
execute if score #CustomArrowAmount Dummy matches 1.. run function rpgpve:game/arrows/find_arrow/start
execute if score #CustomArrowAmount Dummy matches 1.. run clear @s #rpgpve:arrows[minecraft:custom_data={RPG:{ArrowID:0}}]


execute unless score @s HasCustomArrow matches 1.. if items entity @s hotbar.8 * unless items entity @s hotbar.8 #minecraft:arrows[minecraft:custom_data={RPG:{ArrowID:0}}] run function rpgpve:game/arrows/give_other_item_back
execute unless score @s HasCustomArrow matches 1.. run loot replace entity @s hotbar.8 loot rpgpve:items/arrows/feathered_arrow

execute unless score @s HasCustomArrow matches 1.. store result score #NormalArrowsAmount Dummy if items entity @s inventory.* #rpgpve:arrows[minecraft:custom_data={RPG:{ArrowID:0}}]
execute unless score @s HasCustomArrow matches 1.. store result score #NormalArrowsAmountHotbar Dummy if items entity @s hotbar.* #rpgpve:arrows[minecraft:custom_data={RPG:{ArrowID:0}}]
scoreboard players operation #NormalArrowsAmount Dummy += #NormalArrowsAmountHotbar Dummy
execute unless score @s HasCustomArrow matches 1.. if score #NormalArrowsAmount Dummy matches 2.. run clear @s arrow[minecraft:custom_data={RPG:{ArrowID:0}}]
execute unless score @s HasCustomArrow matches 1.. if score #NormalArrowsAmount Dummy matches 2.. run loot replace entity @s hotbar.8 loot rpgpve:items/arrows/feathered_arrow
#----------------------------------------#
