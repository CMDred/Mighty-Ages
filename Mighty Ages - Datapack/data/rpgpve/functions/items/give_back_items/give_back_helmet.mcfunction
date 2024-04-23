#========================================#
#         Made by TheCarotte             #
#       Don't claim as own work          #
#========================================#
#-----------------ITEMS------------------#
execute if score @s HelmetTierPurchased matches 1 run loot replace entity @s armor.head loot rpgpve:items/armors/tier1/tier1helmet
execute if score @s HelmetTierPurchased matches 2 run loot replace entity @s armor.head loot rpgpve:items/armors/tier2/tier2helmet
execute if score @s HelmetTierPurchased matches 3 run loot replace entity @s armor.head loot rpgpve:items/armors/tier3/tier3helmet
execute if score @s HelmetTierPurchased matches 4 run loot replace entity @s armor.head loot rpgpve:items/armors/tier4/tier4helmet
execute if score @s HelmetTierPurchased matches 5 run loot replace entity @s armor.head loot rpgpve:items/armors/tier5/tier5helmet
execute if score @s HelmetTierPurchased matches 6 run loot replace entity @s armor.head loot rpgpve:items/armors/tier6/tier6helmet

execute if entity @s[tag=Enchanted] run function rpgpve:items/magic_armor/enchant

function rpgpve:items/apply_team_trim
#----------------------------------------#
