#========================================#
#         Made by TheCarotte             #
#       Don't claim as own work          #
#========================================#
#-----------------ITEMS------------------#
execute store result score #HasItem Temp run clear @s #rpgpve:swords 0
execute if score #HasItem Temp matches 0 if score @s PhysicMeleePurchased matches 1.. run function rpgpve:items/give_back_items/give_back_sword

execute store result score #HasItem Temp run clear @s bow 0
execute if score #HasItem Temp matches 0 if score @s PhysicRangedPurchased matches 1.. run function rpgpve:items/give_back_items/give_back_bow

execute store result score #HasItem Temp run clear @s #minecraft:shovels 0
execute if score #HasItem Temp matches 0 if score @s MagicMeleePurchased matches 1.. run function rpgpve:items/give_back_items/give_back_sceptre

execute store result score #HasItem Temp run clear @s warped_fungus_on_a_stick{PreventDrop:1b} 0
execute if score #HasItem Temp matches 0 if score @s MagicRangedPurchased matches 1.. run function rpgpve:items/give_back_items/give_back_wand

execute store result score #HasItem Temp run clear @s #rpgpve:helmets{PreventDrop:1b} 0 
execute if score #HasItem Temp matches 0 if score @s HelmetTierPurchased matches 1.. run function rpgpve:items/give_back_items/give_back_helmet
execute store result score #HasItem Temp run clear @s #rpgpve:chestplates{PreventDrop:1b} 0 
execute if score #HasItem Temp matches 0 if score @s ChestplateTierPurchased matches 1.. run function rpgpve:items/give_back_items/give_back_chestplate
execute store result score #HasItem Temp run clear @s #rpgpve:leggings{PreventDrop:1b} 0 
execute if score #HasItem Temp matches 0 if score @s LeggingsTierPurchased matches 1.. run function rpgpve:items/give_back_items/give_back_leggings
execute store result score #HasItem Temp run clear @s #rpgpve:boots{PreventDrop:1b} 0 
execute if score #HasItem Temp matches 0 if score @s BootsTierPurchased matches 1.. run function rpgpve:items/give_back_items/give_back_boots
#----------------------------------------#
