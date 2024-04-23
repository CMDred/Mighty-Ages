#========================================#
#         Made by TheCarotte             #
#       Don't claim as own work          #
#========================================#
#-----------------ITEMS------------------#
execute if score @s LeggingsTierPurchased matches 1 run loot replace entity @s armor.legs loot rpgpve:items/armors/tier1/tier1leggings
execute if score @s LeggingsTierPurchased matches 2 run loot replace entity @s armor.legs loot rpgpve:items/armors/tier2/tier2leggings
execute if score @s LeggingsTierPurchased matches 3 run loot replace entity @s armor.legs loot rpgpve:items/armors/tier3/tier3leggings
execute if score @s LeggingsTierPurchased matches 4 run loot replace entity @s armor.legs loot rpgpve:items/armors/tier4/tier4leggings
execute if score @s LeggingsTierPurchased matches 5 run loot replace entity @s armor.legs loot rpgpve:items/armors/tier5/tier5leggings
execute if score @s LeggingsTierPurchased matches 6 run loot replace entity @s armor.legs loot rpgpve:items/armors/tier6/tier6leggings

execute if entity @s[tag=Enchanted] run function rpgpve:items/magic_armor/enchant

function rpgpve:items/apply_team_trim
#----------------------------------------#
