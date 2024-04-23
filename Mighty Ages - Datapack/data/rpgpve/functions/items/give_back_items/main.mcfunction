#========================================#
#         Made by TheCarotte             #
#       Don't claim as own work          #
#========================================#
#-----------------ITEMS------------------#
execute store result score #HasItem Dummy if items entity @s hotbar.* #rpgpve:swords
execute if score #HasItem Dummy matches 0 if score @s PhysicMeleePurchased matches 1.. run function rpgpve:items/give_back_items/give_back_sword

execute store result score #HasItem Dummy if items entity @s hotbar.* bow
execute if score #HasItem Dummy matches 0 if score @s PhysicRangedPurchased matches 1.. run function rpgpve:items/give_back_items/give_back_bow

execute store result score #HasItem Dummy if items entity @s hotbar.* #minecraft:shovels
execute if score #HasItem Dummy matches 0 if score @s MagicMeleePurchased matches 1.. run function rpgpve:items/give_back_items/give_back_sceptre

execute store result score #HasItem Dummy if items entity @s hotbar.* warped_fungus_on_a_stick[custom_data~{PreventDrop:1b}]
execute if score #HasItem Dummy matches 0 if score @s MagicRangedPurchased matches 1.. run function rpgpve:items/give_back_items/give_back_wand


execute store result score #HasItem Dummy if items entity @s armor.head #rpgpve:helmets[custom_data~{PreventDrop:1b}]
execute if score #HasItem Dummy matches 0 if score @s HelmetTierPurchased matches 1.. run function rpgpve:items/give_back_items/give_back_helmet

execute store result score #HasItem Dummy if items entity @s armor.chest #rpgpve:chestplates[custom_data~{PreventDrop:1b}]
execute if score #HasItem Dummy matches 0 if score @s ChestplateTierPurchased matches 1.. run function rpgpve:items/give_back_items/give_back_chestplate

execute store result score #HasItem Dummy if items entity @s armor.legs #rpgpve:leggings[custom_data~{PreventDrop:1b}]
execute if score #HasItem Dummy matches 0 if score @s LeggingsTierPurchased matches 1.. run function rpgpve:items/give_back_items/give_back_leggings

execute store result score #HasItem Dummy if items entity @s armor.feet #rpgpve:boots[custom_data~{PreventDrop:1b}]
execute if score #HasItem Dummy matches 0 if score @s BootsTierPurchased matches 1.. run function rpgpve:items/give_back_items/give_back_boots

stopsound @s * item.armor.equip_generic
stopsound @s * item.armor.equip_leather
stopsound @s * item.armor.equip_chain
stopsound @s * item.armor.equip_iron
stopsound @s * item.armor.equip_gold
stopsound @s * item.armor.equip_diamond
stopsound @s * item.armor.equip_netherite
#----------------------------------------#
