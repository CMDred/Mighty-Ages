#========================================#
#         Made by TheCarotte             #
#       Don't claim as own work          #
#========================================#
#-----------------ITEMS------------------#
execute if score @s BootsTierPurchased matches 1 run loot replace entity @s armor.feet loot rpgpve:items/armors/tier1/tier1boots
execute if score @s BootsTierPurchased matches 2 run loot replace entity @s armor.feet loot rpgpve:items/armors/tier2/tier2boots
execute if score @s BootsTierPurchased matches 3 run loot replace entity @s armor.feet loot rpgpve:items/armors/tier3/tier3boots
execute if score @s BootsTierPurchased matches 4 run loot replace entity @s armor.feet loot rpgpve:items/armors/tier4/tier4boots
execute if score @s BootsTierPurchased matches 5 run loot replace entity @s armor.feet loot rpgpve:items/armors/tier5/tier5boots
execute if score @s BootsTierPurchased matches 6 run loot replace entity @s armor.feet loot rpgpve:items/armors/tier6/tier6boots

execute if entity @s[tag=Enchanted] run function rpgpve:items/magic_armor/enchant
#----------------------------------------#
